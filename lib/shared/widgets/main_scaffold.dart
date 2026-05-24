import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key, required this.child});

  final Widget child;

  static const _tabs = [
    (icon: Icons.home_outlined,      activeIcon: Icons.home,            label: 'Feed',        path: '/'),
    (icon: Icons.storefront_outlined, activeIcon: Icons.storefront,      label: 'Shop',        path: '/marketplace'),
    (icon: Icons.crisis_alert_outlined, activeIcon: Icons.crisis_alert,  label: 'Rescue',      path: '/rescue'),
    (icon: Icons.pets_outlined,       activeIcon: Icons.pets,            label: 'Adopt',       path: '/adopt'),
    (icon: Icons.chat_bubble_outline, activeIcon: Icons.chat_bubble,     label: 'Messages',    path: '/messages'),
  ];

  int _selectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    for (var i = 0; i < _tabs.length; i++) {
      if (location == _tabs[i].path) return i;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final selected = _selectedIndex(context);
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selected,
        onDestinationSelected: (i) => context.go(_tabs[i].path),
        destinations: [
          for (final tab in _tabs)
            NavigationDestination(
              icon: Icon(tab.icon),
              selectedIcon: Icon(tab.activeIcon),
              label: tab.label,
            ),
        ],
      ),
    );
  }
}
