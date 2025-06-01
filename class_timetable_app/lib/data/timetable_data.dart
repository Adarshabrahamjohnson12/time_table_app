import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/timetable_model.dart';

Future<List<TimetableModel>> loadTimetableFromJson() async {
  final String jsonString =
      await rootBundle.loadString('assets/timetable_4th_year.json');
  final Map<String, dynamic> jsonMap = json.decode(jsonString);

  return jsonMap.entries.map((entry) {
    return TimetableModel(
      day: entry.key,
      periods: List<String>.from(entry.value),
    );
  }).toList();
}
