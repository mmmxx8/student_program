import 'package:flutter/material.dart';
import 'package:student_program/presentation/payment.dart';
import '../domain/entities/student.dart';
import '../main.dart';

class ConfirmationScreen extends StatelessWidget {
  final String nationalId;

  const ConfirmationScreen({
    super.key,
    required this.nationalId,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تأكيد البيانات'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder<Student?>(
          future: studentRepository.getStudentByNationalId(nationalId),
          builder: (context, snapshot) {
            // 1. Loading State
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            // 2. Error or Record Not Found State
            if (snapshot.hasError || !snapshot.hasData || snapshot.data == null) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'تعذر تحميل بيانات الطالب. برجاء التأكد من صحة الرقم القومي.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('الرجوع'),
                      ),
                    ],
                  ),
                ),
              );
            }

            final student = snapshot.data!;

            // 3. Success State: Display Details inside a Square Bordered Box
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Title Section
                  Text(
                    'بيانات الطالب',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 12),

                  // Square Bordered Box for Student Details
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.5,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _buildDetailRow(
                          context,
                          label: 'الاسم :',
                          value: student.name,
                          icon: Icons.person_outline,
                        ),
                        const Divider(height: 20),
                        _buildDetailRow(
                          context,
                          label: 'الرقم القومي :',
                          value: student.nationalId ?? nationalId,
                          icon: Icons.badge_outlined,
                        ),
                        const Divider(height: 20),
                        _buildDetailRow(
                          context,
                          label: 'السنة الدراسية :',
                          value: student.year,
                          icon: Icons.calendar_today_outlined,
                        ),
                        const Divider(height: 20),
                        _buildDetailRow(
                          context,
                          label: 'نوع التعليم :',
                          value: student.education,
                          icon: Icons.school_outlined,
                        ),
                        const Divider(height: 20),
                        _buildDetailRow(
                          context,
                          label: 'المحافظة :',
                          value: student.governorate,
                          icon: Icons.location_on_outlined,
                        ),
                        const Divider(height: 20),
                        _buildDetailRow(
                          context,
                          label: 'المدرسة :',
                          value: student.school,
                          icon: Icons.account_balance_outlined,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  // Navigate to PaymentScreen on Click
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentScreen(
                            student: student,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text(
                      'التأكيد والمتابعة للدفع',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDetailRow(
    BuildContext context, {
    required String label,
    required String value,
    required IconData icon,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: 22,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}