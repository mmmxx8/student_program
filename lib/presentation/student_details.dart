import 'package:flutter/material.dart';
import 'package:student_program/presentation/confirmation_screen.dart';
import '../main.dart';

class StudentDetailsScreen extends StatefulWidget {
  final String? nationalId;

  const StudentDetailsScreen({
    super.key,
    this.nationalId,
  });

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  final TextEditingController _nameController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();

  // Selected dropdown values
  String? _selectedYear;
  String? _selectedEducation;
  String? _selectedGovernorate;
  String? _selectedSchool;

  // Dynamic dropdown options
  List<String> _years = [];
  List<String> _educationTypes = [];
  List<String> _governorates = [];
  List<String> _schools = [];

  bool _isChecking = false;
  bool _isNameValid = false; // Controls green checkmark icon visibility

  @override
  void initState() {
    super.initState();
    _loadYears();
  }

  // Step 1: Fetch initial unique years
  Future<void> _loadYears() async {
    final years = await studentRepository.getYears();
    setState(() {
      _years = years;
    });
  }

  // Step 2: Fetch education types matching selected year
  Future<void> _onYearChanged(String? year) async {
    setState(() {
      _selectedYear = year;
      _selectedEducation = null;
      _selectedGovernorate = null;
      _selectedSchool = null;
      _nameController.clear();
      _isNameValid = false;
      _educationTypes = [];
      _governorates = [];
      _schools = [];
    });

    if (year != null) {
      final list = await studentRepository.getEducationTypes(year: year);
      setState(() => _educationTypes = list);
    }
  }

  // Step 3: Fetch governorates matching year + education
  Future<void> _onEducationChanged(String? education) async {
    setState(() {
      _selectedEducation = education;
      _selectedGovernorate = null;
      _selectedSchool = null;
      _nameController.clear();
      _isNameValid = false;
      _governorates = [];
      _schools = [];
    });

    if (_selectedYear != null && education != null) {
      final list = await studentRepository.getGovernorates(
        year: _selectedYear!,
        education: education,
      );
      setState(() => _governorates = list);
    }
  }

  // Step 4: Fetch schools matching year + education + governorate
  Future<void> _onGovernorateChanged(String? governorate) async {
    setState(() {
      _selectedGovernorate = governorate;
      _selectedSchool = null;
      _nameController.clear();
      _isNameValid = false;
      _schools = [];
    });

    if (_selectedYear != null &&
        _selectedEducation != null &&
        governorate != null) {
      final list = await studentRepository.getSchools(
        year: _selectedYear!,
        education: _selectedEducation!,
        governorate: governorate,
      );
      setState(() => _schools = list);
    }
  }

  // Asynchronous validation check to toggle the green check icon
  Future<void> _validateCurrentName(String name) async {
    if (name.trim().isEmpty || !isDropdownsComplete) {
      if (_isNameValid) setState(() => _isNameValid = false);
      return;
    }

    final student = await studentRepository.getStudentByDetails(
      name: name,
      year: _selectedYear!,
      education: _selectedEducation!,
      governorate: _selectedGovernorate!,
      school: _selectedSchool!,
    );

    if (mounted) {
      setState(() {
        _isNameValid = student != null;
      });
    }
  }

  bool get isDropdownsComplete =>
      _selectedYear != null &&
      _selectedEducation != null &&
      _selectedGovernorate != null &&
      _selectedSchool != null;

  bool get _isFormValid =>
      _nameController.text.trim().isNotEmpty && isDropdownsComplete;

  // Handles checking DB existence before moving forward
  Future<void> _handleVerificationAndSubmit() async {
    setState(() => _isChecking = true);

    final name = _nameController.text.trim();

    final existingStudent = await studentRepository.getStudentByDetails(
      name: name,
      year: _selectedYear!,
      education: _selectedEducation!,
      governorate: _selectedGovernorate!,
      school: _selectedSchool!,
    );

    if (!mounted) return;
    setState(() => _isChecking = false);

    if (existingStudent != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConfirmationScreen(
            nationalId: existingStudent.nationalId ?? widget.nationalId ?? '',
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'البيانات المدخلة غير موجودة بقاعدة البيانات. برجاء التأكد من صحتها.'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 4),
        ),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _nameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('بيانات الطالب'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Year Dropdown
              DropdownButtonFormField<String>(
                value: _selectedYear,
                decoration: const InputDecoration(labelText: 'السنة :'),
                hint: const Text('اختر السنة'),
                items: _years
                    .map((y) => DropdownMenuItem(value: y, child: Text(y)))
                    .toList(),
                onChanged: _onYearChanged,
              ),
              const SizedBox(height: 16),

              // 2. Education Dropdown
              DropdownButtonFormField<String>(
                value: _selectedEducation,
                decoration: const InputDecoration(labelText: 'نوع التعليم :'),
                hint: const Text('اختر نوع التعليم'),
                items: _educationTypes
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: _selectedYear != null ? _onEducationChanged : null,
              ),
              const SizedBox(height: 16),

              // 3. Governorate Dropdown
              DropdownButtonFormField<String>(
                value: _selectedGovernorate,
                decoration: const InputDecoration(labelText: 'المحافظة :'),
                hint: const Text('اختر المحافظة'),
                items: _governorates
                    .map((g) => DropdownMenuItem(value: g, child: Text(g)))
                    .toList(),
                onChanged:
                    _selectedEducation != null ? _onGovernorateChanged : null,
              ),
              const SizedBox(height: 16),

              // 4. School Dropdown
              DropdownButtonFormField<String>(
                value: _selectedSchool,
                decoration: const InputDecoration(labelText: 'المدرسة :'),
                hint: const Text('اختر المدرسة'),
                items: _schools
                    .map((s) => DropdownMenuItem(value: s, child: Text(s)))
                    .toList(),
                onChanged: _selectedGovernorate != null
                    ? (val) => setState(() {
                          _selectedSchool = val;
                          _nameController.clear();
                          _isNameValid = false;
                        })
                    : null,
              ),
              const SizedBox(height: 16),

              // 5. Name Autocomplete Field with Live Validation Checkmark
              LayoutBuilder(
                builder: (context, constraints) {
                  return Autocomplete<String>(
                    initialValue: TextEditingValue(text: _nameController.text),
                    optionsBuilder: (TextEditingValue textEditingValue) async {
                      if (!isDropdownsComplete) {
                        return const Iterable<String>.empty();
                      }

                      return await studentRepository.getMatchingNames(
                        year: _selectedYear!,
                        education: _selectedEducation!,
                        governorate: _selectedGovernorate!,
                        school: _selectedSchool!,
                        query: textEditingValue.text,
                      );
                    },
                    onSelected: (String selection) {
                      _nameController.text = selection;
                      _validateCurrentName(selection);
                    },
                    fieldViewBuilder:
                        (context, controller, focusNode, onEditingComplete) {
                      controller.addListener(() {
                        if (_nameController.text != controller.text) {
                          _nameController.text = controller.text;
                          _validateCurrentName(controller.text);
                        }
                      });

                      return TextField(
                        controller: controller,
                        focusNode: focusNode,
                        enabled: isDropdownsComplete,
                        decoration: InputDecoration(
                          labelText: 'الاسم :',
                          hintText: isDropdownsComplete
                              ? 'اختر اسم الطالب أو ابدأ بالكتابة...'
                              : 'قم باختيار الاختيارات أولاً',
                          suffixIcon: _isNameValid
                              ? Icon(
                                  Icons.check_circle,
                                  color: Theme.of(context).colorScheme.secondary,
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
                                    option,
                                    textAlign: TextAlign.right,
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