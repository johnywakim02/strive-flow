import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:strive_flow/core/colors/app_colors_theme_extension.dart';
import 'package:strive_flow/core/navigation/go_router_paths.dart';
import 'package:strive_flow/core/provider/page_vm_providers.dart';
import 'package:strive_flow/core/ui/pages/tabbed_scaffold.dart';
import 'package:strive_flow/ui/create/create_page.dart';
import 'package:strive_flow/ui/create/subpages/create_principle_subpage.dart';
import 'package:strive_flow/ui/create/subpages/create_rule_subpage.dart';

GoRouter router = GoRouter(
  initialLocation: GoRouterPaths.tabRoutes[0],
  routes: [
    GoRoute(
      path: GoRouterPaths.createPrinciple,
      builder: (context, state){
        //final tabReturnIndex = state.extra as int? ?? 0; // can later be used when returning to the original page
        return MultiProvider(
          providers: principleSubPageProviders,
          child: CreatePrincipleSubpage()
        );
      },
    ),
    GoRoute(
      path: GoRouterPaths.createRule,
      builder: (context, state){
        return CreateRuleSubpage();
      }
    ),
    ShellRoute(
      builder: (context, state, child) {
        final selectedIndex = GoRouterPaths.tabRoutes.indexOf(state.uri.toString());
        return TabbedScaffold(selectedIndex: selectedIndex, child: child);
      },
      routes: [
        for (int i = 0; i < GoRouterPaths.tabRoutes.length; i++)
          if (i == 1)
            GoRoute(path: GoRouterPaths.tabRoutes[i], builder: (context, state) => CreatePage())
          else
            GoRoute(
              path: GoRouterPaths.tabRoutes[i],
              builder: (context, state) {
                final AppColorsThemeExtension colorScheme = Theme.of(context).extension<AppColorsThemeExtension>()!;
                
                return Scaffold(
                  backgroundColor: colorScheme.backgroundColor,
                  body: Center(child: Text(GoRouterPaths.tabRoutes[i]))
                );
              } 
            )
      ],
    ),
  ]
);