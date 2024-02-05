import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parkplus/Presentation/features/auth/otp_login/verification_page.dart';
import 'package:parkplus/Presentation/widgets/Buttons/custom_button.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';
import 'package:parkplus/controller/auth/timer_controller.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:provider/provider.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TimerProvider>(
        builder: (context, timerProvider, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/login_icon.svg",
                    width: 210.w,
                    height: 131.h,
                  ),
                  SizedBox(
                    height: 95.h,
                  ),
                  CustomText(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontsize: 24.sp,
                    text: "Complete your sign up process",
                  ),
                  SizedBox(
                    height: 23.sp,
                  ),
                  CustomText(
                      text: "Verify OTP",
                      fontWeight: FontWeight.w400,
                      fontsize: 32.sp,
                      color: Colors.black),
                  SizedBox(
                    height: 23.sp,
                  ),
                  CustomText(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontsize: 24.sp,
                    text: "on your mobile number",
                  ),
                  SizedBox(
                    height: 40.sp,
                  ),
                  PinCodeTextField(
                    maxLength: 6,
                    pinBoxHeight: 60,
                    pinBoxWidth: 39,
                    autofocus: false,
                    highlight: true,
                    highlightColor: const Color.fromARGB(255, 67, 161, 237),
                    defaultBorderColor: Color.fromARGB(211, 42, 40, 40),
                    hasTextBorderColor: Color.fromARGB(255, 75, 75, 75),
                    onTextChanged: (String value) {
                      // You can handle changes in the PIN code input here
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                          text:
                              " 00 :${timerProvider.seconds.toString().padLeft(2, '0')} sec  ",
                          fontWeight: FontWeight.w300,
                          fontsize: 24.sp,
                          color: Colors.black),
                      GestureDetector(
                        onTap: () {
                          timerProvider.resetTimer();
                        },
                        child: CustomText(
                          text: "Resend OTP",
                          fontWeight: FontWeight.w400,
                          fontsize: 24.sp,
                          color: const Color.fromARGB(255, 60, 190, 82),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 87.h,
                  ),
                  CustomButton(
                    ontap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const VerificationPage(),
                      ));
                    },
                    title: "Verify",
                    fontweight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
