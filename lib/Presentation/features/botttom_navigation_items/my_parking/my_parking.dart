import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';
import 'package:parkplus/utils/colors.dart';

class MyParking extends StatelessWidget {
  const MyParking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomText(
            text: "My Parking",
            fontWeight: FontWeight.w600,
            fontsize: 33.sp,
            color: Colors.black),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 135.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      text: "Kaloor Kathrikadavu Parking",
                      fontWeight: FontWeight.w600,
                      fontsize: 20,
                      color: black),
                  SizedBox(
                    height: 10.h,
                  ),
                  const CustomText(
                      text: "Date : 13/02/2024 ",
                      fontWeight: FontWeight.w400,
                      fontsize: 18,
                      color: black),
                  const CustomText(
                      text: "Slot :D5",
                      fontWeight: FontWeight.w400,
                      fontsize: 18,
                      color: black),
                  SizedBox(
                    height: 25.h,
                  ),
                  const Divider(
                    color: primaryGreen,
                    thickness: 2,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
