import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/my_parking/custom_widgets/my_parking_container.dart';
import 'package:parkplus/Presentation/widgets/Text/custom_text.dart';

import 'package:parkplus/utils/dialog_helper.dart';

class MyParking extends StatelessWidget {
  const MyParking({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomText(
          text: "My Parking History",
          fontWeight: FontWeight.w600,
          fontsize: 28.sp,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            children: [
                              const SizedBox(height: 30),
                              Container(
                                height: 190.h,
                                width: 320.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: GoogleMap(
                                    initialCameraPosition: const CameraPosition(
                                      target: LatLng(9.998384, 76.299279),
                                      zoom: 16,
                                    ),
                                    markers: {
                                      const Marker(
                                          markerId: MarkerId("marker_id"),
                                          position:
                                              LatLng(9.998384, 76.299279)),
                                    },
                                    myLocationEnabled: true,
                                    mapType: MapType.normal,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40.0,
                                ),
                                child: MyParkingContainer(),
                              ),
                              const SizedBox(height: 20),
                              YesContainer(
                                yestext: "Book Again",
                                onpressedyes: () {},
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const MyParkingContainer(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
