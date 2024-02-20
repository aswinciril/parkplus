import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: 310.w,
            height: 188.h,
            child: Image.asset(
              "assets/images/carparking.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 3.h,
          child: const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "Kaloor Kathrikadavu",
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                        color: Colors.white),
                    CustomText(
                        text: "Parking",
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                        color: Colors.white)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: "250/day",
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                        color: Colors.white),
                    CustomText(
                        text: "36 Slots",
                        fontWeight: FontWeight.w500,
                        fontsize: 16,
                        color: Colors.white)
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
