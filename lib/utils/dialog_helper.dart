import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';
import 'package:parkplus/utils/colors.dart';

void showLocationDialog(
  BuildContext context,
  String title,
  String content,
  Function() onpressed,
) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.9,
        child: AlertDialog(
          title: Text(title),
          content: CustomText(
              text: content,
              fontWeight: FontWeight.w400,
              fontsize: 12.sp,
              color: const Color.fromARGB(255, 76, 76, 76)),
          actions: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              YesContainer(
                onpressedyes: onpressed,
                yestext: "Allow",
              ),
            ]),
          ],
        ),
      );
    },
  );
}

class YesContainer extends StatefulWidget {
  YesContainer({super.key, required this.yestext, required this.onpressedyes});
  final String yestext;
  Function() onpressedyes;

  @override
  State<YesContainer> createState() => _YesContainerState();
}

class _YesContainerState extends State<YesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: primaryGreen),
      child: TextButton(
          onPressed: widget.onpressedyes,
          child: CustomText(
              text: widget.yestext,
              fontWeight: FontWeight.w500,
              fontsize: 16.sp,
              color: Color.fromARGB(255, 255, 255, 255))),
    );
  }
}

class NoContainer extends StatelessWidget {
  const NoContainer({
    super.key,
    required this.notext,
  });
  final String notext;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 12, 178, 50)),
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromARGB(255, 251, 242, 242)),
      child: TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: CustomText(
              text: notext,
              fontWeight: FontWeight.w300,
              fontsize: 16.sp,
              color: const Color.fromARGB(255, 12, 178, 50))),
    );
  }
}
