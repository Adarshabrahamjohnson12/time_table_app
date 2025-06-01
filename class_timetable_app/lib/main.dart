import 'package:flutter/material.dart';
import 'screens/year_selection_screen.dart';

void main() {
  runApp(const ClassTimetableApp());
}

class ClassTimetableApp extends StatelessWidget {
  const ClassTimetableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class Timetable App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const YearSelectionScreen(),
    );
  }
}
