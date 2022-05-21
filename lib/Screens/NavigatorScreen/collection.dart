import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollectionScreen extends StatefulWidget {
  const CollectionScreen({Key? key}) : super(key: key);

  @override
  State<CollectionScreen> createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Column(children: [
          ListTile(
            title: const Text(
              'أحمد أبو زيد',
              textDirection: TextDirection.rtl,
            ),
            subtitle: const Text(
              '+972567390091',
              textDirection: TextDirection.rtl,
            ),
            trailing: const CircleAvatar(
              backgroundColor: Colors.red,
              radius: 50,
              backgroundImage: AssetImage('images/person.png'),
            ),
            leading: SizedBox(
              width: 100,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon:
                        const Icon(Icons.delete_outline, color: Colors.black87),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.phone_outlined,
                      color: Colors.black87,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            child: Divider(
              color: Colors.black26,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20),
          )
        ]);
      },
      itemCount: 10,
    );
  }
}
