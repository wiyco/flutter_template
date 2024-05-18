import 'package:flutter/material.dart';
import 'package:flutter_template/app_bottom_nav_bar.dart' show AppBottomNavBar;
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    // NOTE: https://riverpod.dev/docs/essentials/first_request#setting-up-providerscope
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  static const _title = String.fromEnvironment('appName');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Remove this on prod.
    debugPrint(_title);

    return MaterialApp(
      title: _title,
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const AppBottomNavBar(),
    );
  }
}
