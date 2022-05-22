import 'package:carpooling_app/SharedPrefrances/sherdprefrances.dart';
import 'package:flutter/material.dart';

import '../Widget/Button.dart';
import '../Widget/textfiled.dart';

class EditProfileDriver extends StatefulWidget {
  const EditProfileDriver(
      {Key? key,
      required this.name,
      required this.car,
      required this.phone,
      required this.email,
      required this.city})
      : super(key: key);
  final String name;
  final String email;
  final String phone;
  final String city;
  final String car;

  @override
  State<EditProfileDriver> createState() => _EditProfileDriverState();
}

String? errorName;
String? errorEmail;
String? errorMobile;
String? errorCar;
String? errorCity;
String? errorDate;
int? selectedNumber;
late TextEditingController _nameEditingController;
late TextEditingController _emailEditingController;
late TextEditingController _phoneEditingController;
late TextEditingController _cityEditingController;
late TextEditingController _carEditingController;

@override
class _EditProfileDriverState extends State<EditProfileDriver> {
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _carEditingController = TextEditingController();
    _cityEditingController = TextEditingController();
    _phoneEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameEditingController.dispose();
    _phoneEditingController.dispose();
    _carEditingController.dispose();
    _cityEditingController.dispose();
    _emailEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                ),
                const Center(
                  child: CircleAvatar(
                    backgroundColor: Color(0xffEF9A9A),
                    radius: 80,
                    backgroundImage: AssetImage('images/khareta.jpg'),
                  ),
                ),
                Positioned(
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/EditProfile');
                      },
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  right: 89,
                  bottom: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextFiledWidget(
                controller: _nameEditingController,
                hintText: widget.name.toString(),
                // Name
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person),
                ),
                errorText: errorName,
                keyboardType: TextInputType.text),
            const SizedBox(
              height: 10,
            ),
            TextFiledWidget(
                controller: _emailEditingController,
                hintText: widget.email.toString(),
                //Email
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.email),
                ),
                errorText: errorEmail,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(
              height: 8,
            ),
            TextFiledWidget(
                controller: _phoneEditingController,
                hintText: widget.phone.toString(),
                //Mobile
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone_android),
                ),
                errorText: errorMobile,
                keyboardType: TextInputType.phone),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFiledWidget(
                controller: _cityEditingController,
                hintText: widget.city.toString(),
                // City
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.location_on),
                ),
                errorText: errorCity,
                keyboardType: TextInputType.text),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFiledWidget(
                controller: _carEditingController,
                hintText: widget.car.toString(),
                //Car
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.directions_car),
                ),
                errorText: errorCar,
                keyboardType: TextInputType.text),
            const SizedBox(
              height: 40,
            ),
            Button(
                onPressed: () {
                  // TODO UPDATE EDIT PROFILE

                  ShController().saveInformation(
                      phone: _phoneEditingController.text.toString(),
                      car: _carEditingController.text.toString(),
                      city: _cityEditingController.text.toString(),
                      name: _nameEditingController.text.toString());
                },
                text: 'Update'),
            const SizedBox(
              height: 12,
            ),
            Image.asset(
              'images/logored.png',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
