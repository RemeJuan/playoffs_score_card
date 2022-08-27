import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:playoffs_score_card/collections/score_card.collection.dart';

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

class CoreProvider extends ChangeNotifier {
  final FirebaseAuth _auth;
  final FirebaseFirestore _fireStore;
  final Isar _db;

  AuthStatus status = AuthStatus.None;
  String errorMessage = "";

  CoreProvider(this._auth, this._fireStore, this._db) {
    _init();
  }

  void _init() async {
    if (_auth.currentUser != null) {
      status = AuthStatus.LoggedIn;
      _sync();
      notifyListeners();
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
    notifyListeners();

    if (errorMessage.isNotEmpty) {
      errorMessage = "";
      notifyListeners();
    }

    if (!checkEmail(email)) {
      errorMessage = "Please enter a valid email address";
      notifyListeners();
      return;
    }

    if (!_checkPasswordMatch(password, confirmPassword)) {
      errorMessage = "Passwords do not match";
      notifyListeners();
      return;
    }

    try {
      status = AuthStatus.Registering;
      notifyListeners();

      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      status = AuthStatus.Success;
      notifyListeners();
      loginUser(email, password);
    } on FirebaseAuthException catch (e) {
      status = AuthStatus.None;
      if (e.code == AuthExceptions.WeakPassword.code) {
        errorMessage = 'The password provided is too weak.';
      } else if (e.code == AuthExceptions.UserAlreadyExists.code) {
        errorMessage = 'The account already exists for that email.';
      }
      notifyListeners();
    }
  }

  void loginUser(String email, String password) async {
    if (status != AuthStatus.Success) {
      status == AuthStatus.None;
      notifyListeners();
    }

    if (errorMessage.isNotEmpty) {
      errorMessage = "";
      notifyListeners();
    }

    if (!checkEmail(email)) {
      errorMessage = "Please enter a valid email address";
      notifyListeners();
      return;
    }

    try {
      status = AuthStatus.LoggingIn;
      notifyListeners();

      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      status = AuthStatus.LoggedIn;

      notifyListeners();
    } on FirebaseAuthException catch (e) {
      status = AuthStatus.None;
      if (e.code == AuthExceptions.UserNotFound.code) {
        errorMessage = 'No user found for that email.';
      } else if (e.code == AuthExceptions.WrongPassword.code) {
        errorMessage = 'Wrong password provided for that user.';
      }
      notifyListeners();
    }
  }

  void forgotPassword(String email) async {
    errorMessage = "";

    if (email.isEmpty) {
      errorMessage = 'Please enter your email address.';
      notifyListeners();
      await Future.delayed(const Duration(seconds: 5), () {
        errorMessage = "";
        notifyListeners();
      });
      return;
    }

    try {
      _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == AuthExceptions.UserNotFound.code) {
        errorMessage = 'No user found for that email.';
        notifyListeners();
      }
    }
  }

  void logout() {
    _auth.signOut();
    status = AuthStatus.None;
    notifyListeners();
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
