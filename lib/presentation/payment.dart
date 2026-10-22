import 'package:flutter/material.dart';
import 'package:student_program/domain/entities/student_name_entity.dart';

class PaymentScreen extends StatelessWidget {
  final StudentNameEntity student;

  const PaymentScreen({
    super.key,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('شاشة الدفع'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'اختر طريقة الدفع للطالب: ${student.name}',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const Center(
                child: Icon(
                  Icons.payment_outlined,
                  size: 80,
                  color: Colors.teal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}