import 'package:carpooling_app/Model/bottomnavigator.dart';
import 'package:carpooling_app/Screens/NavigatorScreen/collection.dart';
import 'package:carpooling_app/Screens/NavigatorScreen/profile.dart';
import 'package:carpooling_app/Screens/NavigatorScreen/trip.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'NavigatorScreen/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<BtNavigator> _list = <BtNavigator>[
    const BtNavigator(title: 'Home', widget: Home()),
    const BtNavigator(title:'Collection', widget: CollectionScreen()),
    const BtNavigator(title: 'Trips', widget: Trip()),
    const BtNavigator(title: 'Profile', widget: ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            child: Text(
              _list[currentIndex].title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            alignment: AlignmentDirectional.bottomCenter,
          ),
        ),
      ),
      body: _list[currentIndex].widget,
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white60,
      //   showSelectedLabels: true,
      //   selectedFontSize: 14,
      //   elevation: 10,
      //   backgroundColor: const Color(0xffB40000),
      //   showUnselectedLabels: false,
      //   type: BottomNavigationBarType.fixed,
      //   onTap: (int index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      //   currentIndex: currentIndex,
      //   items: const [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_outlined,
      //           size: 30,
      //         ),
      //         activeIcon: Icon(Icons.home),
      //         label: 'الرئيسية'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.phone_android_outlined,
      //           size: 24,
      //         ),
      //         activeIcon: Icon(
      //           Icons.phone_android,
      //           size: 30,
      //         ),
      //         label: 'التواصل'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.directions_car_outlined,
      //           size: 30,
      //         ),
      //         activeIcon: Icon(Icons.directions_car),
      //         label: 'رحلاتي'),
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.person_outlined,
      //           size: 30,
      //         ),
      //         activeIcon: Icon(Icons.person),
      //         label: 'الملف الشخصي'),
      //   ],
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.redAccent,
        height: 55,
        color: const Color(0xffB40000),
        items: const <Widget>[
          Icon(Icons.home, color: Colors.white, size: 26),
          Icon(Icons.phone_android, color: Colors.white, size: 26),
           Icon(Icons.directions_car, color: Colors.white, size: 26),
          Icon(Icons.person, color: Colors.white, size: 26),
        ],
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        animationCurve: Curves.ease,
        index: 0,
      ),
    );
  }
}
