import 'package:flutter/material.dart';
import 'package:quit_app/answer_buttons.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'QUESTIONS',
            style: TextStyle(
                color: Color.fromARGB(255, 227, 199, 255), fontSize: 28),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
