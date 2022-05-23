class TripModel {
  late String startTrip;
  late String endTrip;
  late String date;
  late String time;
  late int condition;
  late String priceTrip;
  late String numberPassenger;
  late String optionCare;

  // TripModel(
  //     {required this.startTrip,
  //     required this.endTrip,
  //     required this.date,
  //     required this.time,
  //     required this.condition,
  //     required this.priceTrip,
  //     required this.numberPassenger,
  //     required this.optionCare});
  TripModel();

  TripModel.fromMap(Map<String, dynamic> map) {
    startTrip = map['startTrip'];
    endTrip = map['endTrip'];
    date = map['data'];
    time = map['time'];
    condition = map['condition'];
    priceTrip = map['priceTrip'];
    numberPassenger = map['numberPassenger'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['startTrip'] = startTrip;
    map['endTrip'] = endTrip;
    map['data'] = date;
    map['time'] = time;
    map['condition'] = condition;
    map['priceTrip'] = priceTrip;
    map['numberPassenger'] = numberPassenger;

    return map;
  }
}
