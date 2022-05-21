import 'package:flutter/material.dart';

class LitTile extends StatelessWidget {
  const LitTile({
    Key? key,
    required this.title,
    required this.supTitle,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String supTitle;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        tileColor: Colors.white70,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 9),
          child: icon,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.create,
            color: Colors.blue,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16),
          textDirection: TextDirection.rtl,
        ),
        subtitle: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(supTitle, textDirection: TextDirection.rtl)),
      ),
    );
  }
}
