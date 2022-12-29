import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PhilovFirebaseUser {
  PhilovFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PhilovFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PhilovFirebaseUser> philovFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PhilovFirebaseUser>(
      (user) {
        currentUser = PhilovFirebaseUser(user);
        return currentUser!;
      },
    );
