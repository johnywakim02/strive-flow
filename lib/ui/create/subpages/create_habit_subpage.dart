import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';

class CreateHabitSubpage extends StatefulWidget {
  const CreateHabitSubpage({super.key});

  @override
  State<CreateHabitSubpage> createState() => _CreateHabitSubpageState();
}

class _CreateHabitSubpageState extends State<CreateHabitSubpage> {
  DateTime _selectedDate = DateTime.now();
  DateTime _focusedDay = DateTime.now();

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
            Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(16),
              color: colorScheme.backgroundColor.withAlpha(200),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: TableCalendar(
                  firstDay: DateTime.utc(2000, 1, 1),
                  lastDay: DateTime.utc(2100, 12, 31),
                  focusedDay: _focusedDay,
                  calendarFormat: CalendarFormat.month,
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month',
                  },
                  selectedDayPredicate: (day) => isSameDay(_selectedDate, day),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDate = selectedDay;
                      _focusedDay = focusedDay;
                    });
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                  calendarStyle: CalendarStyle(
                    todayDecoration: BoxDecoration(
                      color: colorScheme.calendarTodayColor,
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: colorScheme.calendarSelectedColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
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
