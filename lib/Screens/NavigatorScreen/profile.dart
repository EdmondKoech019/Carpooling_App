import 'package:flutter/material.dart';

import '../../Widget/listtile_widgete.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
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
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_camera_outlined,
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
          const LitTile(
              title: 'أحمد أبو زيد',
              supTitle: 'سائق',
              icon: Icon(Icons.person)),
          const LitTile(
              title: 'res2312000@gmail.com',
              supTitle: 'الايميل',
              icon: Icon(Icons.email)),
          const LitTile(
              title: '+972567390091',
              supTitle: 'رقم الموبايل',
              icon: Icon(Icons.phone_android)),
          const LitTile(
              title: 'مدينة القاهرة _ الأهرامات',
              supTitle: 'السكن',
              icon: Icon(Icons.location_on)),
        ],
      ),
    );
  }
}
