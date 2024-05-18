import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DemoPage extends StatefulHookConsumerWidget {
  const DemoPage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends ConsumerState<DemoPage>
    with AutomaticKeepAliveClientMixin {
  /// [AutomaticKeepAliveClientMixin] requires this method to keep the page state.
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    /// [AutomaticKeepAliveClientMixin] requires this method to be called.
    super.build(context);

    final counter = useState(0);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
        tooltip: 'Increment',
        foregroundColor: Theme.of(context).colorScheme.inverseSurface,
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
