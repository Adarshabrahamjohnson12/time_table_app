import 'package:flutter/material.dart';
import 'timetable_screen.dart';

class YearSelectionScreen extends StatelessWidget {
  const YearSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Select Year")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TimetableScreen()),
            );
          },
          child: const Text("4th Year"),
        ),
      ),
    );
  }
}
