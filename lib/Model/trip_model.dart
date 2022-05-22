class TripModel {
  late String sartTrip;
  late String endTrip;
  late String date;
  late String time;
  late int condition;
  late double priceTrip;
  late int numberPassenger;
  late String optionCare;

  TripModel(
      {required this.sartTrip,
      required this.endTrip,
      required this.date,
      required this.time,
      required this.condition,
      required this.priceTrip,
      required this.numberPassenger,required this.optionCare});
}
