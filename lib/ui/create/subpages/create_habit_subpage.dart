import 'package:flutter/material.dart';
import 'package:strive_flow/ui/create/widgets/habit_calendar/habit_calendar.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';
import 'package:intl/intl.dart';

class CreateHabitSubpage extends StatefulWidget {
  const CreateHabitSubpage({super.key});

  @override
  State<CreateHabitSubpage> createState() => _CreateHabitSubpageState();
}

class _CreateHabitSubpageState extends State<CreateHabitSubpage> with TickerProviderStateMixin {
  DateTime _selectedDate = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  bool _isCalendarExpanded = true;

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
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
            GestureDetector(
              onTap: () => setState(() => _isCalendarExpanded = !_isCalendarExpanded),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                decoration: BoxDecoration(
                  color: colorScheme.appBarBackgroundColor.withAlpha(200),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Selected: ${DateFormat('d MMM y').format(_selectedDate)}',
                    ),
                    Icon(
                      _isCalendarExpanded ? Icons.expand_less : Icons.expand_more,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              crossFadeState: _isCalendarExpanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: HabitCalendar(
                selectedDate: _selectedDate,
                focusedDay: _focusedDay,
                onDaySelected: onDaySelected,
              ),
              secondChild: const SizedBox.shrink(),
            ),
            const SizedBox(height: 24),
            Text(
              'Data for ${DateFormat('d MMM y').format(_selectedDate)}',
            ),
          ],
        ),
      ),
    );
  }
}
