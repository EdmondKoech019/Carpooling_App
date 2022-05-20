import 'package:carpooling_app/Widget/textfiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

String? error;
late TextEditingController _textEditingController;

class _MapState extends State<Map> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          child: Text(
            'اختر المدينة',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          alignment: AlignmentDirectional.centerStart,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color(0xffB40000),
      body: ListView(
        children: [
          const SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _textEditingController,
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  hintTextDirection: TextDirection.rtl,
                  hintText: 'أدخل اسم المديمة',
                  hintStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              height: 700,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Colors.white,
              ),
              child: Image.asset(
                'images/khareta.jpg',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
