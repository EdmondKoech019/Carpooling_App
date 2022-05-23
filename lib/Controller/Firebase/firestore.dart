import 'package:carpooling_app/Model/trip_model.dart';
import 'package:carpooling_app/Model/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireStore {
  final FirebaseFirestore _instance = FirebaseFirestore.instance;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<bool> createAcount({required Users users}) async {
    return await _instance
        .collection('Users')
        .doc(auth.currentUser?.uid)
        .set(users.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> updateDataDriver({required Users users}) async {
    return await _instance
        .collection('Users')
        .doc(auth.currentUser?.uid)
        .update(users.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> updateTripDriver(
      {required TripModel tripModel, required String path}) async {
    return await _instance
        .collection('Users')
        .doc(auth.currentUser?.uid)
        .collection('Trip')
        .doc(path)
        .update(tripModel.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> addTripDriver({required TripModel tripModel}) async {
    return await _instance
        .collection('Users')
        .doc(auth.currentUser?.uid)
        .collection('Trip')
        .add(tripModel.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Stream<QuerySnapshot<TripModel>> readTripDriver() async* {
    yield* _instance
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .collection('Trip')
        .withConverter<TripModel>(
            fromFirestore: (snapshot, options) =>
                TripModel.fromMap(snapshot.data()!),
            toFirestore: (TripModel tripModel, options) => TripModel().toMap())
        .snapshots();
  }

  Stream<DocumentSnapshot<Users>> readDriver() async* {
    yield*_instance
        .collection('Users')
        .doc(auth.currentUser!.uid)
        .withConverter<Users>(
            fromFirestore: (snapshot, options) =>
                Users.fromMap(snapshot.data()!),
            toFirestore: (Users users, options) => users.toMap())
        .snapshots();
  }

  Future<bool> deleteTripDriver({required String id}) async {
    return await _instance
        .collection('Users')
        .doc(auth.currentUser?.uid)
        .collection('Trip')
        .doc(id)
        .delete()
        .then((value) => true)
        .catchError((error) => false);
  }
}
