import 'package:flutter/material.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';
import 'package:table_calendar/table_calendar.dart';

class HabitCalendar extends StatelessWidget {
  const HabitCalendar({
    super.key,
    required this.selectedDate,
    required this.focusedDay,
    required this.onDaySelected,
  });

  final DateTime selectedDate;
  final DateTime focusedDay;
  final void Function(DateTime selectedDay, DateTime focusedDay) onDaySelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;

    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(16),
      color: colorScheme.backgroundColor.withAlpha(200),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: TableCalendar(
          firstDay: DateTime.utc(2000, 1, 1),
          lastDay: DateTime.utc(2100, 12, 31),
          focusedDay: focusedDay,
          calendarFormat: CalendarFormat.month,
          availableCalendarFormats: const {
            CalendarFormat.month: 'Month',
          },
          selectedDayPredicate: (day) => isSameDay(selectedDate, day),
          onDaySelected: onDaySelected,
          onPageChanged: (newFocusedDay) => onDaySelected(selectedDate, newFocusedDay),
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
    );
  }
}
