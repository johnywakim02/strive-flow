/*
 the base skeleton of a tab view.
 -----------------------
 Provides the skeletton for tabs.
 can provide the header as well if it's constant
*/

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:strive_flow/core/colors/app_theme_extension.dart';
import 'package:strive_flow/core/navigation/go_router_paths.dart';

class TabbedScaffold extends StatelessWidget{
  final Widget child;
  final int selectedIndex;
  const TabbedScaffold({super.key, required this.child, required this.selectedIndex}):
    assert(selectedIndex >= 0 && selectedIndex < 4, 'TabScaffold: selectedIndex must be between 0 and 3, got value $selectedIndex');

  void onTapHandler(BuildContext context, int index){
    final path = GoRouterPaths.tabRoutes[index];
    context.go(path);
  }

  @override
  Widget build(BuildContext context) {
    final AppThemeExtension colorScheme = Theme.of(context).extension<AppThemeExtension>()!;
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorScheme.tabBarBackgroundColor,
        selectedItemColor: colorScheme.tabBarItemSelectedColor,
        unselectedItemColor: colorScheme.tabBarItemUnselectedColor,
        currentIndex: selectedIndex,
        onTap: (index){onTapHandler(context ,index);},
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(label: 'Visualize', icon: Icon(Icons.insights)),
          BottomNavigationBarItem(label: 'Create', icon: Icon(Icons.create)),
          BottomNavigationBarItem(label: 'Conquer', icon: Icon(Icons.emoji_events)),
          BottomNavigationBarItem(label: 'Level Up', icon: Icon(Icons.star)),
        ],
      ), 
    );
  }
}