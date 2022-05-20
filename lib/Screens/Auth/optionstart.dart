import 'package:flutter/material.dart';

class OptionStart extends StatefulWidget {
  const OptionStart({Key? key}) : super(key: key);

  @override
  State<OptionStart> createState() => _OptionStartState();
}

class _OptionStartState extends State<OptionStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB40000),
      body: Stack(
        children: [
          Center(
              child: Image.asset(
            'images/logo.png',
            color: Colors.white.withAlpha(80),
            fit: BoxFit.cover,
            width: 300,
            height: 300,
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'سائق',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size(120, 50),
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'راكب',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  minimumSize: const Size(120, 50),
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ),
            ],
          )
        ],
      ),
    );
  }
}
