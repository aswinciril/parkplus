import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 114.95.w,
      height: 114.95.h,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(84, 223, 108, 1),
          borderRadius: BorderRadius.circular(10.55.r)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 29.65, vertical: 18.83),
        // child: Lottie.asset('assets/animations/parkplus.json',
        //     height: 77.14.h, width: 55.5.w),
        child: SvgPicture.asset(
          "assets/logo/Vector 12.svg",
          height: 77.14.h,
          width: 55.5.w,
        ),
      ),
    );
  }
}
