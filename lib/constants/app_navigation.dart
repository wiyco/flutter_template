import 'package:flutter/material.dart';
import 'package:flutter_template/features/demo/demo_page.dart' show DemoPage;

/// Destination properties for the root bottom navigation bar.
enum AppNavigationDestination {
  demo(
    label: 'Home',
    icon: Icons.home_rounded,
    title: 'Demo',
    page: DemoPage(title: 'Demo'),
  ),
  ;

  const AppNavigationDestination({
    required this.title,
    required this.label,
    required this.icon,
    required this.page,
  });

  final String label;
  final IconData icon;
  final String title;
  final Widget page;
}
