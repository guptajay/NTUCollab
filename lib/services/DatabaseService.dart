import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String email;
  static const String USER_COLLECTION_NAME = 'Users';

  DatabaseService({ this.email });

  final CollectionReference userCollection = FirebaseFirestore.instance.collection(USER_COLLECTION_NAME);

  Future<void> updateUserData(List tags, String name) async {
    return await userCollection.doc(this.email).set({
      'name': name,
      'Tags': tags
    });
  }
}