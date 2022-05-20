import 'package:carpooling_app/Widget/Button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      children: [
        const Icon(
          Icons.directions_car,
          size: 200,
        ),
        const Divider(
          color: Colors.transparent,
        ),
        const SizedBox(
          height: 50,
        ),
        Button(
            onPressed: () {
              Navigator.pushNamed(context, '/OptionTrip_Screen');
            },
            text: 'اضافة رحلة'),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'يمكنك بالضغط على الزر اضافة رحلة وتشاركها ليستطيع الأشخاص المجاورين لك والذاهبين لنفس طريقك أن ينضمو معك لنفس الرحلة',
          style: TextStyle(color: Colors.black54, fontSize: 14),
        )
      ],
    );
  }
}
