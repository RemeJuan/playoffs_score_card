import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';

import 'general_providers.dart';

enum AuthExceptions {
  WeakPassword("weak-password"),
  UserAlreadyExists("email-already-in-use"),
  UserNotFound("'user-not-found'"),
  WrongPassword("wrong-password");

  final String code;

  const AuthExceptions(this.code);
}

enum AuthStatus {
  None,
  Registering,
  LoggingIn,
  LoggedIn,
  Success,
}

final coreProvider = Provider(CoreProvider.new);

class CoreProvider {
  final Ref ref;

  late FirebaseAuth _auth;
  late FirebaseFirestore _fireStore;
  late Isar _db;

  AuthStatus status = AuthStatus.None;
  String errorMessage = "";

  CoreProvider(this.ref) {
    _init();
  }

  void _init() async {
    _auth = ref.read(firebaseAuthProvider);
    _fireStore = ref.read(firestoreProvider);
    _db = ref.read(dbProvider);

    if (_auth.currentUser != null) {
      status = AuthStatus.LoggedIn;
      _sync();
    }
  }

  void _sync() async {
    final online =
        await _fireStore.collection("scores").doc(_auth.currentUser!.uid).get();
    final local = await _db.scoreCards.where().exportJson();

    if (online.data() == null) {
      await _fireStore.collection("scores").doc(_auth.currentUser!.uid).set({
        "history": local,
      });
    } else {
      final history = online.data()!["history"];

      if (local.length > history.length) {
        final localMissing = local.where((e) {
          final dates = history.map((e) => e["date"]).toList();
          return !dates.contains(e["date"]);
        }).toList();

        await _fireStore.collection("scores").doc(_auth.currentUser!.uid).set({
          "history": history..addAll(localMissing),
        });
      } else if (local.length < history.length) {
        final historyMissing = history.where((e) {
          final dates = local.map((e) => e["date"]).toList();
          return !dates.contains(e["date"]);
        }).toList();

        final updated = [...historyMissing].map((e) {
          return ScoreCard()
            ..date = DateTime(e["date"])
            ..rower = e["rower"]
            ..benchHops = e["benchHops"]
            ..kneeTuckPushUps = e["kneeTuckPushUps"]
            ..lateralHops = e["lateralHops"]
            ..boxJumpBurpee = e["boxJumpBurpee"]
            ..chinUps = e["chinUps"]
            ..squatPress = e["squatPress"]
            ..russianTwist = e["russianTwist"]
            ..deadBallOverTheShoulder = e["deadBallOverTheShoulder"]
            ..shuttleSprintLateralHop = e["shuttleSprintLateralHop"];
        }).toList();

        await _db.writeTxn((isar) async {
          isar.scoreCards.putAll(updated);
        });
      }
    }
  }

  void createNewUser(
    String email,
    String password,
    String confirmPassword,
  ) async {
    status = AuthStatus.None;

    if (errorMessage.isNotEmpty) {
      errorMessage = "";
    }

    if (!checkEmail(email)) {
      errorMessage = "Please enter a valid email address";
      return;
    }

    if (!_checkPasswordMatch(password, confirmPassword)) {
      errorMessage = "Passwords do not match";
      return;
    }

    try {
      status = AuthStatus.Registering;

      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      status = AuthStatus.Success;
      loginUser(email, password);
    } on FirebaseAuthException catch (e) {
      status = AuthStatus.None;
      if (e.code == AuthExceptions.WeakPassword.code) {
        errorMessage = 'The password provided is too weak.';
      } else if (e.code == AuthExceptions.UserAlreadyExists.code) {
        errorMessage = 'The account already exists for that email.';
      }
    }
  }

  void loginUser(String email, String password) async {
    if (status != AuthStatus.Success) {
      status == AuthStatus.None;
    }

    if (errorMessage.isNotEmpty) {
      errorMessage = "";
    }

    if (!checkEmail(email)) {
      errorMessage = "Please enter a valid email address";
      return;
    }

    try {
      status = AuthStatus.LoggingIn;

      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      status = AuthStatus.LoggedIn;
    } on FirebaseAuthException catch (e) {
      status = AuthStatus.None;
      if (e.code == AuthExceptions.UserNotFound.code) {
        errorMessage = 'No user found for that email.';
      } else if (e.code == AuthExceptions.WrongPassword.code) {
        errorMessage = 'Wrong password provided for that user.';
      }
    }
  }

  void forgotPassword(String email) {
    errorMessage = "";
    try {
      _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthExceptions.UserNotFound.code) {
        errorMessage = 'No user found for that email.';
      }
    }
  }

  void logout() {
    _auth.signOut();
    status = AuthStatus.None;
  }

  // check if passwords match
  bool _checkPasswordMatch(String password, String confirmPassword) {
    return password == confirmPassword;
  }

  // check if email is valid
  bool checkEmail(email) {
    return RegExp(
      r"^[a-zA-Z\d.a-zA-Z\d.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }
}
