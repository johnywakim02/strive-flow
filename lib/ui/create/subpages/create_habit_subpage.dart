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
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: TableCalendar(
              firstDay: DateTime.utc(2000, 1, 1),
              lastDay: DateTime.utc(2100, 12, 31),
              focusedDay: _focusedDay,
              calendarFormat: CalendarFormat.month,
              availableCalendarFormats: const {
                CalendarFormat.month: 'Month',
              },
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDate, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDate = selectedDay;
                  _focusedDay = focusedDay; 
                });
              },
              onPageChanged: (focusedDay) {
                // update focusedDay when month is changed
                _focusedDay = focusedDay;
              },
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'Selected date: ${_selectedDate.toLocal().toString().split(' ')[0]}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
