import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:flutter_template/constants/app_navigation.dart'
    show AppNavigationDestination;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class AppBottomNavBar extends ConsumerWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PersistentTabView(
      tabs: AppNavigationDestination.values
          .map((AppNavigationDestination destination) => PersistentTabConfig(
                screen: destination.page,
                item: ItemConfig(
                  icon: Icon(destination.icon),
                  activeForegroundColor:
                      Theme.of(context).colorScheme.onSurface,
                  opacity: .75,
                  filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                ),
              ))
          .toList(),
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
        navBarDecoration: NavBarDecoration(
          color: Theme.of(context).colorScheme.surface,
          filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        ),
      ),
    );
  }
}
