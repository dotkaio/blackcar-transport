import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BlackcarFirebaseUser {
  BlackcarFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BlackcarFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BlackcarFirebaseUser> blackcarFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BlackcarFirebaseUser>(
      (user) {
        currentUser = BlackcarFirebaseUser(user);
        return currentUser!;
      },
    );
