// ignore_for_file: unused_local_variable

import 'package:block_app/core/secrets/app_secrets.dart';
import 'package:block_app/core/theme/theme.dart';
import 'package:block_app/features/auth/presentation/pages/login_page.dart';
// import 'package:block_app/features/auth/presentation/pages/signup_page.dart' show SignupPage;
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Supabase
  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );
  // Initialize the app with Supabase
 final supabase= await Supabase.initialize(
    url:AppSecrets.supabaseUrl,  
    anonKey:AppSecrets.supabaseAnonKey, );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
