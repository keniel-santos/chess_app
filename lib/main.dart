import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/initial_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true, // você pode deixar como false em produção
      builder:
          (context) => MaterialApp(
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            initialRoute: 'initial',
            routes: {
              'initial': (context) => const InitialScreen(),
              'login': (context) => const LoginScreen(),
              'register': (context) => const RegisterScreen(),
              'home': (context) => const HomeScreen(),
            },
          ),
    ),
  );
}
