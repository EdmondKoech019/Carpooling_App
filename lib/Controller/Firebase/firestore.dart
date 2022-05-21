import 'package:carpooling_app/Model/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStore {
  final FirebaseFirestore _instance = FirebaseFirestore.instance;

  Future<bool> createAcount({required Users users}) async {
    return await _instance
        .collection('Users')
        .add(users.toMap())
        .then((DocumentReference value) => true)
        .catchError((error) => false);
  }
}
