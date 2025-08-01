import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:strive_flow/core/navigation/go_router_paths.dart';
import 'package:strive_flow/ui/create/widgets/create_option_card.dart';

class CreatePage extends StatelessWidget{
  const CreatePage({super.key});
  final int _selectedIndex = 1;

  handlePrinciplesOnTapped(BuildContext context){
    context.push(GoRouterPaths.createPrinciple, extra: _selectedIndex);
  }
  
  handleRulesOnTapped(){
    debugPrint("To Implement");
  }

  handleHabitsOnTapped(){
    debugPrint("To Implement");
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final int splashOpacity = 200;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create"),
        centerTitle: true,
        elevation: 2,
      ),
      body: ListView(
        children: [
          CreateOptionCard(
            title: "Principles",
            color: colorScheme.primary.withAlpha(splashOpacity), 
            iconData: Icons.lightbulb_outline,
            onTap: () => handlePrinciplesOnTapped(context)
          ),
          CreateOptionCard(
            title: "Rules",
            color: colorScheme.secondary.withAlpha(splashOpacity), 
            iconData: Icons.menu_book_outlined,
            onTap: handleRulesOnTapped 
          ),
          CreateOptionCard(
            title: "Habits",
            color: colorScheme.tertiary.withAlpha(splashOpacity), 
            iconData: Icons.check_circle_outline,
            onTap: handleHabitsOnTapped  
          ),
        ],
      )
    );
  }
}