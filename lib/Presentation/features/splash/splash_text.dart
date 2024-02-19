import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashText extends StatefulWidget {
  const SplashText({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashTextState createState() => _SplashTextState();
}

class _SplashTextState extends State<SplashText> {
  double opacity = 0.0;
  @override
  void initState() {
    super.initState();
    // Start the animation on initState
    animate();
  }

  void animate() async {
    // Delay the animation by a few seconds for a "slow" effect
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      opacity = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 2), // Adjust the duration as needed
      opacity: opacity,
      child: Text(
        "ParkPlus",
        style: TextStyle(
            fontSize: 40.sp,
            color: const Color.fromRGBO(84, 223, 108, 1),
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
