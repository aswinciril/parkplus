import 'package:flutter/material.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/bottom_navigation__main.dart';
import 'package:parkplus/utils/dialog_helper.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    // Show dialog after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showLocationDialog(context, 'Update your \nCurrent Location',
          'Please update your current\nLocation to show the availability of lots',
          () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const BottomNavigationPage(),
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
