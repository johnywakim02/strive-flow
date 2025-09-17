import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';
import 'package:strive_flow/core/navigation/go_router_paths.dart';
import 'package:strive_flow/ui/create/widgets/create_option_card.dart';

class CreatePage extends StatelessWidget{
  const CreatePage({super.key});
  final int _selectedIndex = 1;

  void handlePrinciplesOnTapped(BuildContext context){
    context.push(GoRouterPaths.createPrinciple, extra: _selectedIndex);
  }
  
  void handleRulesOnTapped(BuildContext context){
    context.push(GoRouterPaths.createRule, extra: _selectedIndex);
  }

  void handleHabitsOnTapped(BuildContext context){
    context.push(GoRouterPaths.createHabit, extra: _selectedIndex);
  }

  void handleToolsOnTapped(){
    debugPrint("To Implement");
  }

  @override
  Widget build(BuildContext context) {
    final AppColorsThemeExtension colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;
    
    return Scaffold(
      backgroundColor: colorScheme.backgroundColor,
      appBar: AppBar(
        title: const Text("Create"),
        centerTitle: true,
        backgroundColor: colorScheme.appBarBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            CreateOptionCard(
              title: "Principles", 
              iconData: Icons.lightbulb_outline,
              onTap: () => handlePrinciplesOnTapped(context)
            ),
            CreateOptionCard(
              title: "Rules", 
              iconData: Icons.menu_book_outlined,
              onTap: () => handleRulesOnTapped(context)
            ),
            CreateOptionCard(
              title: "Habits",
              iconData: Icons.check_circle_outline,
              onTap: () => handleHabitsOnTapped(context)
            ),
            CreateOptionCard(
              title: "Tools",
              iconData: Icons.handyman_outlined,
              onTap: handleToolsOnTapped  
            ),
          ],
        ),
      )
    );
  }
}