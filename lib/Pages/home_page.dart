import 'package:expenses_tracker/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeNotifier = ref.read(themeProviderProvider.notifier);
    final isDarkMode = ref.watch(themeProviderProvider
        .select((theme) => theme.brightness == Brightness.dark));
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              themeNotifier.toggleTheme();
            },
            child: Text(isDarkMode ? 'lightmode' : 'darkmode'),
          )
        ],
      ),
    );
  }
}
