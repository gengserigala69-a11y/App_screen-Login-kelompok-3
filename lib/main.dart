import 'package:flutter/material.dart';

// import sesuai struktur folder
import 'screens/sign_in_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/confirm_password_screen.dart';
import 'error/error_404_screen.dart';
import 'notification/empty_notifications_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',

      theme: ThemeData(primarySwatch: Colors.green),

      initialRoute: '/signin',

      routes: {
        '/signin': (context) => SignInScreen(), // ✅ HAPUS const di sini
        '/otp': (context) => const OtpScreen(),
        '/confirm-password': (context) => const ConfirmPasswordScreen(),
        '/error': (context) => const Error404Screen(),
        '/empty': (context) => const EmptyNotificationsScreen(),
      },
    );
  }
}
