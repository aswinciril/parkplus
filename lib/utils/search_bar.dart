import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  //TODO

  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.92,
      height: 50.h,
      child: TextFormField(
        textAlign: TextAlign.left,
        decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60.0),
              borderSide:
                  const BorderSide(color: Color.fromRGBO(200, 200, 200, 0.698)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(60.0),
              borderSide:
                  const BorderSide(color: Color.fromRGBO(0, 0, 0, 0.675)),
            ),
            hintText: 'Search for parking lots',
            hintStyle: const TextStyle()),
      ),
    );
  }
}
