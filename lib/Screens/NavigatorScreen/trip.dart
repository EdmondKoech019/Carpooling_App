import 'package:carpooling_app/Model/trip_model.dart';
import 'package:carpooling_app/Screens/NavigatorScreen/options_trip.dart';
import 'package:carpooling_app/Widget/listtile_widgete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trip extends StatefulWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  State<Trip> createState() => _TripState();
}

class _TripState extends State<Trip> {
  List<TripModel> trip = <TripModel>[
    TripModel(
        sartTrip: 'مدينة نصر',
        endTrip: 'شرم الشيخ',
        date: '22/1/2022',
        optionCare: '÷ونداي',
        time: '2:4Pm',
        numberPassenger: 8,
        priceTrip: 50,
        condition: 0),
    TripModel(
        sartTrip: 'القاهرة',
        endTrip: 'المغراقة',
        optionCare: '÷ونداي',
        date: '2/5/2022',
        time: '2:6Pm',
        numberPassenger: 4,
        priceTrip: 50,
        condition: 1),
    TripModel(
        sartTrip: 'القاهرة',
        endTrip: 'المغراقة',
        optionCare: '÷ونداي',
        date: '2/5/2022',
        time: '2:6Pm',
        numberPassenger: 4,
        priceTrip: 50,
        condition: 1),
    TripModel(
        sartTrip: 'فلسطين العربية',
        endTrip: 'مصر العربية',
        numberPassenger: 4,
        priceTrip: 50,
        date: '29/8/2022',
        time: '2:4Pm',
        optionCare: '÷ونداي',
        condition: 2),
    TripModel(
        sartTrip: 'فلسطين العربية',
        endTrip: 'مصر العربية',
        numberPassenger: 4,
        priceTrip: 50,
        date: '29/8/2022',
        optionCare: '÷ونداي',
        time: '2:4Pm',
        condition: 2),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.black26)),
            tileColor: trip[index].condition == 0
                ? Colors.green
                : trip[index].condition == 1
                    ? Colors.red
                    : Colors.black,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  trip[index].sartTrip.toString(),
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  ': ستبدأ الرحلة من',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
            subtitle: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      trip[index].endTrip.toString(),
                      style: const TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      ': ستنتهي الرحلة الى',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    Text(
                      trip[index].condition == 0
                          ? 'قيد التنفيذ'
                          : trip[index].condition == 1
                              ? 'منتهية'
                              : 'ملغية',
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.date_range,
                      size: 14,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      trip[index].date.toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.access_time,
                      size: 14,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      trip[index].time.toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OptionTripNav(
                          sartTrip: trip[index].sartTrip.toString(),
                          endTrip: trip[index].endTrip.toString(),
                          optionCar: trip[index].optionCare.toString(),
                          numberPassenger: trip[index].numberPassenger.toInt(),
                          time: trip[index].time.toString(),
                          date: trip[index].date.toString(),
                          priceTrip: trip[index].priceTrip,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.drive_file_rename_outline,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      padding: const EdgeInsets.symmetric(horizontal: 8),
      itemCount: trip.length,
    );
  }
}
