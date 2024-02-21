import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/home/custom_widgets/home_container.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/home/view/slot_confirm_page.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/home/view/slots_page.dart';

class HomeContainerList extends StatelessWidget {
  const HomeContainerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SlotsPage(),
                    ));
              },
              child: const HomeContainer());
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 20.h);
        },
        itemCount: 9);
  }
}
