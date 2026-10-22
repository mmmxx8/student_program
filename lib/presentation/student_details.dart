import 'package:flutter/material.dart';
import 'package:student_program/core/di/injection..dart';
import 'package:student_program/domain/entities/local_lookup_entities.dart';
import 'package:student_program/domain/entities/student_name_entity.dart';
import 'package:student_program/domain/repositories/student_repository.dart';
import 'package:student_program/presentation/confirmation_screen.dart';

class StudentDetailsScreen extends StatefulWidget {
  final String? nationalId;

  const StudentDetailsScreen({super.key, this.nationalId});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  final StudentRepository _studentRepository = getIt<StudentRepository>();

  // Selected Typed Entities
  SanaEntity? _selectedSana;
  EdaraEntity? _selectedEdara;
  RowEntity? _selectedRow;
  StudentNameEntity? _selectedStudent;

  // Dropdown Options Lists
  List<SanaEntity> _years = [];
  List<EdaraEntity> _edaras = [];
  List<RowEntity> _rows = [];

  bool _isChecking = false;
  bool _isNameValid = false;

  @override
  void initState() {
    super.initState();
    _loadInitialData();
  }

  // Normalize Arabic text for precise search
  String _normalizeArabic(String text) {
    return text
        .trim()
        .replaceAll(RegExp(r'[\u064B-\u0652]'), '') // Strip Tashkeel
        .replaceAll(RegExp(r'[أإآ]'), 'ا')
        .replaceAll('ى', 'ي')
        .replaceAll('ة', 'ه');
  }

  Future<void> _loadInitialData() async {
    final years = await _studentRepository.getLocalYears();
    final edaras = await _studentRepository.getLocalEdaras();
    setState(() {
      _years = years;
      _edaras = edaras;
    });
  }

  Future<void> _onYearChanged(SanaEntity? sana) async {
    setState(() {
      _selectedSana = sana;
      _selectedRow = null;
      _selectedStudent = null;
      _isNameValid = false;
      _rows = [];
    });

    if (sana != null) {
      final rows = await _studentRepository.getLocalRowsByYear(sana.idSana);
      setState(() => _rows = rows);
    }
  }

  void _onEdaraChanged(EdaraEntity? edara) {
    setState(() {
      _selectedEdara = edara;
      _selectedStudent = null;
      _isNameValid = false;
    });
  }

  void _onRowChanged(RowEntity? row) {
    setState(() {
      _selectedRow = row;
      _selectedStudent = null;
      _isNameValid = false;
    });
  }

  bool get isDropdownsComplete =>
      _selectedSana != null && _selectedEdara != null && _selectedRow != null;

  // FIXED: Form is valid as long as dropdowns are selected and a student is picked
  bool get _isFormValid => isDropdownsComplete && _selectedStudent != null;

  Future<void> _handleVerificationAndSubmit() async {
    if (_selectedStudent == null) return;

    setState(() => _isChecking = true);
    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    setState(() => _isChecking = false);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmationScreen(
          nationalId: _selectedStudent!.nationalId ?? widget.nationalId ?? '',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('بيانات الطالب'), centerTitle: true),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Year Dropdown
              DropdownButtonFormField<SanaEntity>(
                value: _selectedSana,
                decoration: const InputDecoration(labelText: 'السنة :'),
                hint: const Text('اختر السنة'),
                items: _years
                    .map(
                      (s) => DropdownMenuItem(
                        value: s,
                        child: Text(s.sana.toString()),
                      ),
                    )
                    .toList(),
                onChanged: _onYearChanged,
              ),
              const SizedBox(height: 16),

              // 2. Edara Dropdown
              DropdownButtonFormField<EdaraEntity>(
                value: _selectedEdara,
                decoration: const InputDecoration(labelText: 'الإدارة :'),
                hint: const Text('اختر الإدارة'),
                items: _edaras
                    .map(
                      (e) => DropdownMenuItem(value: e, child: Text(e.edara)),
                    )
                    .toList(),
                onChanged: _selectedSana != null ? _onEdaraChanged : null,
              ),
              const SizedBox(height: 16),

              // 3. Row Dropdown
              DropdownButtonFormField<RowEntity>(
                value: _selectedRow,
                decoration: const InputDecoration(labelText: 'مسار التعليم :'),
                hint: const Text('اختر مسار التعليم'),
                items: _rows
                    .map((r) => DropdownMenuItem(value: r, child: Text(r.row)))
                    .toList(),
                onChanged: _selectedEdara != null ? _onRowChanged : null,
              ),
              const SizedBox(height: 16),

              // 4. Autocomplete Search
              LayoutBuilder(
                builder: (context, constraints) {
                  return Autocomplete<StudentNameEntity>(
                    displayStringForOption: (StudentNameEntity option) =>
                        option.name,
                    optionsBuilder: (TextEditingValue textEditingValue) async {
                      if (!isDropdownsComplete) {
                        return const Iterable<StudentNameEntity>.empty();
                      }

                      final candidates = await _studentRepository
                          .searchStudents(
                            idSana: _selectedSana!.idSana,
                            idEdara: _selectedEdara!.idEdara,
                            idRow: _selectedRow!.idRow,
                          );

                      final query = textEditingValue.text.trim();

                      if (query.isEmpty) {
                        return candidates;
                      }

                      final cleanQuery = _normalizeArabic(query);

                      return candidates.where((student) {
                        final cleanName = _normalizeArabic(student.name);
                        return cleanName.contains(cleanQuery);
                      });
                    },
                    onSelected: (StudentNameEntity selection) {
                      setState(() {
                        _selectedStudent = selection;
                        _isNameValid = true;
                      });
                    },
                    fieldViewBuilder:
                        (context, controller, focusNode, onEditingComplete) {
                          return TextField(
                            controller: controller,
                            focusNode: focusNode,
                            enabled: isDropdownsComplete,
                            onTap: () {
                              if (controller.text.isEmpty) {
                                controller.text = '';
                              }
                            },
                            onChanged: (text) {
                              if (_selectedStudent != null &&
                                  _selectedStudent!.name != text) {
                                setState(() {
                                  _selectedStudent = null;
                                  _isNameValid = false;
                                });
                              }
                            },
                            decoration: InputDecoration(
                              labelText: 'الاسم :',
                              hintText: isDropdownsComplete
                                  ? 'اضغط هنا لعرض الأسماء أو ابدأ بالكتابة...'
                                  : 'قم باختيار السنة والإدارة والمسار أولاً',
                              suffixIcon: _isNameValid
                                  ? Icon(
                                      Icons.check_circle,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.secondary,
                                    )
                                  : null,
                            ),
                          );
                        },
                    optionsViewBuilder: (context, onSelected, options) {
                      return Align(
                        alignment: Alignment.topRight,
                        child: Material(
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(8),
                          child: SizedBox(
                            width: constraints.maxWidth,
                            child: ListView.separated(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount: options.length,
                              separatorBuilder: (context, index) =>
                                  const Divider(height: 1),
                              itemBuilder: (context, index) {
                                final option = options.elementAt(index);
                                return ListTile(
                                  title: Text(
                                    option.name,
                                    textAlign: TextAlign.right,
                                  ),
                                  subtitle: Text(
                                    'رقم الجلوس: ${option.seatNumber}',
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  onTap: () => onSelected(option),
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 30),

              // Submit Button
              ElevatedButton(
                onPressed: (_isFormValid && !_isChecking)
                    ? _handleVerificationAndSubmit
                    : null,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: _isChecking
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Text(
                        'التحقق والمتابعة',
                        style: TextStyle(fontSize: 18),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}