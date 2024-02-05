import 'package:flutter/material.dart';
import 'package:parkplus/Presentation/features/auth/otp_login/number_login.dart';
import 'package:parkplus/Presentation/features/splash/splash_text.dart';
import 'package:parkplus/Presentation/widgets/Icons/app_icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const NumberLoginPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(),
            SizedBox(
              height: 9.35,
            ),
            SplashText(),
          ],
        ),
      ),
    );
  }
}
