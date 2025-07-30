import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:strive_flow/core/navigation/go_router_paths.dart';
import 'package:strive_flow/core/ui/pages/tabbed_scaffold.dart';
import 'package:strive_flow/ui/create/create_page.dart';

GoRouter router = GoRouter(
  initialLocation: GoRouterPaths.tabRoutes[0],
  routes: [
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
              builder: (context, state) => Scaffold(
                body: Center(child: Text(GoRouterPaths.tabRoutes[i]))
              )
            )
      ],
    ),
  ]
);