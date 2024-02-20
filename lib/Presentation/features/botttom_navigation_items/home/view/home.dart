import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/home/custom_widgets/home_container_list.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';
import 'package:parkplus/utils/search_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final TextEditingController? searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 45.0),
          child: CustomText(
              text: "Good noon Alex",
              fontWeight: FontWeight.w500,
              fontsize: 21.sp,
              color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            const CustomSearchBar(),
            SizedBox(
              height: 15.sp,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15.sp,
                  ),
                  Column(
                    children: [
                      CustomText(
                          text: "Near by         ",
                          fontWeight: FontWeight.w300,
                          fontsize: 22.sp,
                          color: Colors.black),
                      CustomText(
                          text: "Parking Lots",
                          fontWeight: FontWeight.w600,
                          fontsize: 22.sp,
                          color: Colors.black),
                      SizedBox(
                        height: 10.sp,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: HomeContainerList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
