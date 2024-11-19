import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> storeUserData(String uid, String firstName, String lastName) async {
    return _db.collection('users').doc(uid).set({
      'firstName': firstName,
      'lastName': lastName,
      'role': 'user',
      'registrationDateTime': DateTime.now(),
    });
  }
}
