import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/home/view/slots_page.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';
import 'package:parkplus/utils/dialog_helper.dart';

class SlotConfirmPage extends StatelessWidget {
  const SlotConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: CustomText(
          text: "Kaloor Kathrikadavu Parking",
          fontWeight: FontWeight.w900,
          fontsize: 18.sp,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/carparking.jpg",
            fit: BoxFit.cover,
            height: 0.5.sh,
            // 60% of screen height
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                    text: "Are You Sure You Want To Confirm?",
                    fontWeight: FontWeight.w400,
                    fontsize: 18.sp,
                    color: Colors.black),
                SizedBox(
                  height: 50.h,
                ),
                CustomText(
                    text: "slot :B",
                    fontWeight: FontWeight.w400,
                    fontsize: 18.sp,
                    color: Colors.black),
                CustomText(
                    text: "Parking Lot 1",
                    fontWeight: FontWeight.w400,
                    fontsize: 18.sp,
                    color: Colors.black),
                CustomText(
                    text: "Kaloor Kathrikadavu Parking",
                    fontWeight: FontWeight.w400,
                    fontsize: 18.sp,
                    color: Colors.black),
                SizedBox(
                  height: 40.h,
                ),
                CustomText(
                    text: "Rs: 50/Hr",
                    fontWeight: FontWeight.w400,
                    fontsize: 18.sp,
                    color: Colors.black),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const NoContainer(notext: " Cancel"),
                    SizedBox(
                      width: 20.w,
                    ),
                    YesContainer(
                      yestext: "Confirm",
                      onpressedyes: () {},
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
