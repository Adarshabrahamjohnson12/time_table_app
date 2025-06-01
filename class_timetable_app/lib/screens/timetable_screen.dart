import 'package:flutter/material.dart';
import '../data/timetable_data.dart';
import '../models/timetable_model.dart';

class TimetableScreen extends StatelessWidget {
  const TimetableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("4th Year Timetable")),
      body: FutureBuilder<List<TimetableModel>>(
        future: loadTimetableFromJson(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No timetable data available"));
          }

          final timetable = snapshot.data!;
          return ListView.builder(
            itemCount: timetable.length,
            itemBuilder: (context, index) {
              final daySchedule = timetable[index];
              return ExpansionTile(
                title: Text(daySchedule.day),
                children: daySchedule.periods
                    .map((period) => ListTile(title: Text(period)))
                    .toList(),
              );
            },
          );
        },
      ),
    );
  }
}
