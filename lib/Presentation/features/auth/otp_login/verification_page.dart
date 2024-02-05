import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:parkplus/Presentation/widgets/Buttons/custom_button.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('assets/animations/green2.json',
                height: 159.14.h, width: 149.5.w),
            SizedBox(
              height: 20.h,
            ),
            CustomText(
              text: "Verification Success",
              fontWeight: FontWeight.w700,
              fontsize: 23.sp,
              color: const Color.fromRGBO(84, 223, 108, 1),
            ),
            SizedBox(
              height: 100.h,
            ),
            CustomButton(
              ontap: () {},
              title: "Continue",
              fontweight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
