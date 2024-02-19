import 'package:flutter/material.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/home/view/home.dart';
import 'package:parkplus/Presentation/features/botttom_navigation_items/my_parking/my_parking.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(), // Show content based on selected index
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 33,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_taxi_outlined,
              size: 33,
            ),
            label: 'My Parking',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              size: 33,
            ),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.logout_outlined,
              size: 33,
            ),
            label: 'Logout',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        // Return the content for Home
        return HomePage();
      case 1:
        // Return the content for My Parking
        return MyParking();
      case 2:
        // Return the content for Account
        return Center(
          child: Text('Account Page Content'),
        );
      case 3:
        // Return the content for Logout
        return Center(
          child: Text('Logout Page Content'),
        );
      default:
        return SizedBox
            .shrink(); // Return an empty SizedBox if index is invalid
    }
  }
}
