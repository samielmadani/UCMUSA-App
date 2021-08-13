import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UcmusaFirebaseUser {
  UcmusaFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

UcmusaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UcmusaFirebaseUser> ucmusaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<UcmusaFirebaseUser>((user) => currentUser = UcmusaFirebaseUser(user));
