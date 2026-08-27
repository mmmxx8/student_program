import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_program/core/app_session.dart';
import 'package:student_program/presentation/confirmation_screen.dart';
import '../main.dart';
import 'student_details.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _whatsappController = TextEditingController();
  final TextEditingController _nationalIdController = TextEditingController();

  bool _isButtonEnabled = false;
  bool _isNationalIdValid = false; // Green checkmark state for National ID
  final RegExp _egyptianPhoneRegExp = RegExp(r'^01[0125]\d{8}$');

  @override
  void initState() {
    super.initState();
    _whatsappController.text = "01234123412";
    _whatsappController.addListener(_validateWhatsAppInput);
    _nationalIdController.addListener(_validateNationalIdInput);
  }

  void _validateWhatsAppInput() {
    final text = _whatsappController.text;
    final isValid = _egyptianPhoneRegExp.hasMatch(text);

    if (isValid != _isButtonEnabled) {
      setState(() {
        _isButtonEnabled = isValid;
      });
    }
  }

  // Live database validation for National ID checkmark
  Future<void> _validateNationalIdInput() async {
    final nationalId = _nationalIdController.text.trim();

    if (nationalId.length == 14) {
      final student = await studentRepository.getStudentByNationalId(
        nationalId,
      );
      if (mounted) {
        setState(() {
          _isNationalIdValid = student != null;
        });
      }
    } else {
      if (_isNationalIdValid) {
        setState(() {
          _isNationalIdValid = false;
        });
      }
    }
  }

  // 1. First trigger: Show WhatsApp confirmation dialog
  Future<void> _handleContinue() async {
    final whatsapp = _whatsappController.text.trim();
    final nationalId = _nationalIdController.text.trim();

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('تأكيد رقم الواتساب', textAlign: TextAlign.right),
          content: Text(
            'هل أنت متأكد من صحة رقم الواتساب التالي؟\n\n$whatsapp',
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('تعديل'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                // Save session & proceed to logic after user confirms number
                _processNavigation(whatsapp, nationalId);
              },
              child: const Text('تأكيد'),
            ),
          ],
        );
      },
    );
  }

  // 2. Process DB lookup and Navigation after confirmation
  Future<void> _processNavigation(String whatsapp, String nationalId) async {
    // Save WhatsApp number globally in AppSession
    AppSession().currentWhatsappNumber = whatsapp;

    // Database check logic
    if (nationalId.length == 14) {
      final existingStudent = await studentRepository.getStudentByNationalId(
        nationalId,
      );

      if (!mounted) return;

      if (existingStudent != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ConfirmationScreen(nationalId: nationalId),
          ),
        );
      } else {
        _showNotFoundDialog(nationalId);
      }
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudentDetailsScreen(
            nationalId: nationalId.isNotEmpty ? nationalId : null,
          ),
        ),
      );
    }
  }

  void _showNotFoundDialog(String nationalId) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text(
            'الرقم القومي غير مسجل',
            textAlign: TextAlign.right,
          ),
          content: Text(
            'لم يتم العثور على طالب مرتبط بالرقم القومي ($nationalId).\nهل ترغب في إعادة كتابة الرقم أم استكمال البيانات؟',
            textAlign: TextAlign.right,
          ),
          actionsAlignment: MainAxisAlignment.spaceBetween,
          actions: [
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: const Text('إعادة كتابة الرقم'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        StudentDetailsScreen(nationalId: nationalId),
                  ),
                );
              },
              child: const Text('تعبئة البيانات'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _whatsappController.dispose();
    _nationalIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('برنامج الطلاب'), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),

              // WhatsApp Input
              TextField(
                controller: _whatsappController,
                keyboardType: TextInputType.phone,
                maxLength: 11,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: const InputDecoration(
                  labelText: 'رقم الواتساب :',
                  hintText: '01XXXXXXXXX',
                  counterText: '',
                ),
              ),

              const SizedBox(height: 20),

              // National ID Input with Live Green Checkmark
              TextField(
                controller: _nationalIdController,
                keyboardType: TextInputType.number,
                maxLength: 14,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  labelText: 'الرقم القومي :',
                  hintText: 'اختياري (أدخل 14 رقم)',
                  counterText: '',
                  suffixIcon: _isNationalIdValid
                      ? Icon(
                          Icons.check_circle,
                          color: Theme.of(context).colorScheme.secondary,
                        )
                      : null,
                ),
              ),

              const Spacer(),

              // Submit Button
              ElevatedButton(
                onPressed: _isButtonEnabled ? _handleContinue : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('متابعة', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
