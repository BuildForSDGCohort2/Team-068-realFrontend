import 'package:firebase_auth/firebase_auth.dart';
import 'package:lacus/module/user/user.dart';

class Authenticate {
  //true or false ststaement
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User _userfromFirebaseUser(FirebaseUser user) {
    return user != null ? User(userId: user.uid) : null;
  }

  Stream<FirebaseUser> get currentUser => _auth.onAuthStateChanged;
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userfromFirebaseUser(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signUpWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return _userfromFirebaseUser(firebaseUser);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<AuthResult> signInWithCredential(AuthCredential credential) async {
    try {
      await _auth.signInWithCredential(credential);
    } catch (e) {
      print(e.toString());
    }
  }

  Future resetPassword(String email) async {
    try {
      return await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }
}
