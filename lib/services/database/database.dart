import 'package:cloud_firestore/cloud_firestore.dart';

class DataBaseMethod {
  getUserByUsername(String Username) async {
    return await Firestore.instance
        .collection('Users')
        .where('name', isEqualTo: Username)
        .getDocuments();
  }

  getUserByUserEmail(String UserEmail) async {
    return await Firestore.instance
        .collection('Users')
        .where('email', isEqualTo: UserEmail)
        .getDocuments();
  }

  uploadUserInfo(userMap) {
    Firestore.instance.collection('Users').add(userMap);
  }

  createChatRoom(String chatRoomId, chatRoomMap) {
    Firestore.instance
        .collection('ChatRoom')
        .document(chatRoomId)
        .setData(chatRoomMap);
  }

  addConversationMessages(String chatRoomId, messageMap) {
    Firestore.instance
        .collection('ChatRoom')
        .document(chatRoomId)
        .collection('chats')
        .add(messageMap);
  }

  getConversationMessages(String chatRoomId) async {
    return await Firestore.instance
        .collection('ChatRoom')
        .document(chatRoomId)
        .collection('chats')
        .orderBy('time')
        .snapshots();
  }

  getChatRoom(String userName) async {
    return await Firestore.instance
        .collection('ChatRoom')
        .where('users', arrayContains: userName)
        .snapshots();
  }
}
