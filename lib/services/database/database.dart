import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lacus/module/data/data.dart';
import 'package:lacus/module/user/user.dart';

class DatabaseServices {
  final String uid;
  DatabaseServices({this.uid});

  // Collection reference
  final CollectionReference dataCollection =
      Firestore.instance.collection('data');
  Future updateUserData(
    String name,
    String sugars,
    int strength,
  ) async {
    return await dataCollection.document(uid).setData({
      'name': name,
      'sugars': sugars,
      'strength': strength,
    });
  }

  // data list from snapshot
  List<Data> _dataListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Data(
        name: doc.data['name'] ?? '',
        sugars: doc.data['sugars'] ?? '',
        strength: doc.data['strength'] ?? 0,
      );
    }).toList();
  }

  // UserData from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      sugars: snapshot.data['sugars'],
      strength: snapshot.data['strength'],
    );
  }

  // get data stream from database
  Stream<List<Data>> get data {
    return dataCollection.snapshots().map(_dataListFromSnapshot);
  }

  // get user doc stream
  Stream<UserData> get userData {
    return dataCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }
}
