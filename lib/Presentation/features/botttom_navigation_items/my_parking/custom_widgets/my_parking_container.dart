import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';
import 'package:parkplus/utils/colors.dart';

class MyParkingContainer extends StatelessWidget {
  const MyParkingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
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
    );
  }
}
