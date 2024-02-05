import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.ontap,
    required this.title,
    required this.fontweight,
  });
  final Function() ontap;
  final String title;
  final FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(84, 223, 108, 1),
        foregroundColor: Colors.white,
        minimumSize: Size(240.w, 50.h),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(36),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 28.sp,
            fontWeight: fontweight,
          ),
        ),
      ),
    );
  }
}
