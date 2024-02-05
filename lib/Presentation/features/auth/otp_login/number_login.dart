import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkplus/Presentation/features/auth/otp_login/otp_page.dart';
import 'package:parkplus/Presentation/widgets/Buttons/custom_button.dart';
import 'package:parkplus/Presentation/widgets/Icons/app_icon.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';

class NumberLoginPage extends StatelessWidget {
  const NumberLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppIcon(),
            SizedBox(
              height: 11.h,
            ),
            Text(
              "ParkPlus",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 48.sp,
                    // fontFamily: 'Roboto-Black',
                    color: const Color.fromRGBO(84, 223, 108, 1),
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 78.sp,
            ),
            SizedBox(
              width: 240.w,
              height: 50.h,
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(163, 163, 163, 0.7)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60.0),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(36, 161, 17, 0.678)),
                  ),
                  hintText: 'Enter your number',
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: "Don't have an account? ",
                    fontWeight: FontWeight.w600,
                    fontsize: 14.sp,
                    color: Colors.black),
                CustomText(
                  text: "Sign Up",
                  fontWeight: FontWeight.w900,
                  fontsize: 14.sp,
                  color: const Color.fromRGBO(84, 223, 108, 1),
                )
              ],
            ),
            SizedBox(
              height: 78.h,
            ),
            CustomButton(
              ontap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OtpPage(),
                ));
              },
              title: "Get OTP",
              fontweight: FontWeight.w600,
            ),
          ],
        ),
      ),
    );
  }
}
