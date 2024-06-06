import 'package:expenses_tracker/Pages/home_page.dart';
import 'package:expenses_tracker/firebase_options.dart';
import 'package:expenses_tracker/providers/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themedata = ref.watch(themeProviderProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: themedata,
    );
  }
}
