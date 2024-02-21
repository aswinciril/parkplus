import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/home/view/slot_confirm_page.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:parkplus/utils/colors.dart';
import 'package:parkplus/utils/dialog_helper.dart';

class SlotsPage extends StatelessWidget {
  const SlotsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          children: [
            CustomText(
                text: "Parking Lots Kaloor Kathrikadavu",
                fontWeight: FontWeight.w700,
                fontsize: 23.sp,
                color: black),
            Row(
              children: [
                CustomText(
                    text: "36 slots",
                    fontWeight: FontWeight.w400,
                    fontsize: 23.sp,
                    color: black),
                SizedBox(
                  width: 10.w,
                ),
                RatingBar.builder(
                  initialRating: 4.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  ignoreGestures: true, //user cant change
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 30,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            )
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ParkingSlotsList(
                title: "A",
              ),
              ParkingSlotsList(
                title: "B",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ParkingSlotsList extends StatelessWidget {
  const ParkingSlotsList({
    super.key,
    required this.title,
  });

  // final List<bool> showSvgList;
  final String title;

  @override
  Widget build(BuildContext context) {
    bool? isCarParked = false;
    return Column(
      children: [
        SizedBox(
          height: 25.h,
        ),
        CustomText(
            text: title,
            fontWeight: FontWeight.w800,
            fontsize: 24,
            color: black),
        SizedBox(
          height: 20.h,
        ),
        Container(
          height: 6.h,
          width: 87.w,
          decoration: BoxDecoration(
            color: primaryGreen,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        SizedBox(
          width: 87.w,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 12,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                          height: 150.h,
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: "Rs 50",
                                      fontWeight: FontWeight.w800,
                                      fontsize: 22.sp,
                                      color: black),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  CustomText(
                                      text: "Selected Slot = $index",
                                      fontWeight: FontWeight.w400,
                                      fontsize: 22.sp,
                                      color: black),
                                ],
                              ),
                              YesContainer(
                                yestext: "Book Slot",
                                onpressedyes: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SlotConfirmPage(),
                                      ));
                                },
                              )
                            ],
                          ));
                    },
                  );
                },
                child: Container(
                  width: 87.w,
                  height: 80.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 2,
                    color: primaryGreen,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: isCarParked!
                        ? SvgPicture.asset(
                            "assets/icons/noslot.svg",
                            width: 30,
                            height: 30,
                          )
                        : Center(
                            child: CustomText(
                                text: "$index",
                                fontWeight: FontWeight.w700,
                                fontsize: 24,
                                color: black),
                          ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
      ],
    );
  }
}
