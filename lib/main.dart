import 'package:bloc/core/theme.dart';
import 'package:bloc/features/auth/presentation/pages/signup.dart';
import 'package:flutter/material.dart';

import 'features/auth/presentation/pages/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'journal',
      theme: AppTheme.darkThemeMode,
      home: SignIn(),
    );
  }
}
