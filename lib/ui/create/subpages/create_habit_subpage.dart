import 'package:flutter/material.dart';
import 'package:strive_flow/ui/create/widgets/habit_calendar/habit_calendar.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';

class CreateHabitSubpage extends StatefulWidget {
  const CreateHabitSubpage({super.key});

  @override
  State<CreateHabitSubpage> createState() => _CreateHabitSubpageState();
}

class _CreateHabitSubpageState extends State<CreateHabitSubpage> {
  DateTime _selectedDate = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  void onDaySelected( DateTime selectedDay, DateTime focusedDay){
    setState(() {
      _selectedDate = selectedDay;
      _focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;

    return Scaffold(
      backgroundColor: colorScheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: colorScheme.appBarBackgroundColor,
        title: const Text("Habits"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            HabitCalendar(selectedDate: _selectedDate, focusedDay: _focusedDay, onDaySelected: onDaySelected,),
            const SizedBox(height: 24),
            Text(
              'Selected date: ${_selectedDate.toLocal().toString().split(' ')[0]}',
            ),
          ],
        ),
      ),
    );
  }
}
