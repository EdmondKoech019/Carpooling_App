import 'package:carpooling_app/Widget/Button.dart';
import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                'اختر الطريقة التي ستدخل بها للتطبيق',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Button(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/HomeScreen');
                },
                text: 'سائق'),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                '\t                        تمكنك خاصية دخول التطبيق كسائق اضافة رحلات,'
                '\nوالذهاب للرحلة مع الأشخاص التي تختارهم حسب رغبتك من نفس مدينتك \n'
                'وتمكن الراكبين الذين تمت اضافتك معهم من تحديد موقعك والتواصل معك \n'
                '\t                   هيا انطلق في رحلتك مع أصدقاءك المشاركين بنفس رحلتك',
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
            Button(onPressed: () {}, text: 'راكب'),
            const Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                '\t                        تمكنك خاصية دخول التطبيق كراكب الدخول الى رحلات'
                '\nوالذهاب للرحلة مع الأشخاص التي تختارهم حسب رغبتك من نفس مدينتك \n'
                'وتمكن السائقين الذين تمت اضافتك معهم من تحديد موقعك والتواصل معك \n'
                '\t                   هيا انطلق في رحلتك مع أصدقاءك المشاركين بنفس رحلتك',
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
