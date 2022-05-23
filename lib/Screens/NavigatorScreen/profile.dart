import 'package:carpooling_app/Controller/Firebase/firestore.dart';
import 'package:carpooling_app/Model/users.dart';
import 'package:carpooling_app/Screens/editeProfiledriver.dart';
import 'package:carpooling_app/SharedPrefrances/sherdprefrances.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../Widget/listtile_widgete.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

late String name;
late String phone;
late String email;
late String city;
late String car;

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name = ShController().returnName;
    phone = ShController().returnPhone;
    email = ShController().printemail;
    city = ShController().returnCity;
    car = ShController().returnCar;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),

      // child: StreamBuilder<QuerySnapshot<Users>>(
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     } else if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {

      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditProfileDriver(
                              name: name,
                              car: car,
                              phone: phone,
                              email: email,
                              city: city),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.drive_file_rename_outline,
                      color: Colors.black,
                    ),
                  ),
                ),
                right: 89,
                bottom: 50,
              ),
            ],
          ),
          const Divider(
            color: Colors.red,
          ),
          const SizedBox(
            height: 10,
          ),
          LitTile(title: name, supTitle: 'سائق', icon: Icon(Icons.person)),
          LitTile(
              title: email, supTitle: 'Email', icon: const Icon(Icons.email)),
          LitTile(
              title: phone,
              supTitle: 'Mobile',
              icon: const Icon(Icons.phone_android)),
          LitTile(
              title: city,
              supTitle: 'City',
              icon: const Icon(Icons.location_on)),
          LitTile(
              title: car,
              supTitle: 'Care',
              icon: const Icon(Icons.directions_car)),
        ],
      ),
    );
  }
}
