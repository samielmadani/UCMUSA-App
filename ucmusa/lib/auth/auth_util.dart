import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_user_provider.dart';

export 'anonymous_auth.dart';
export 'apple_auth.dart';
export 'email_auth.dart';
export 'facebook_auth.dart';
export 'google_auth.dart';

/// Tries to sign in or create an account using Firebase Auth.
/// Returns the User object if sign in was successful.
Future<User> signInOrCreateAccount(
    BuildContext context, Future<UserCredential> Function() signInFunc) async {
  try {
    final userCredential = await signInFunc();
    await maybeCreateUser(userCredential.user);
    return userCredential.user;
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: ${e.message}')),
    );
    return null;
  }
}

Future signOut() => FirebaseAuth.instance.signOut();

Future resetPassword({String email, BuildContext context}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: ${e.message}')),
    );
    return null;
  }
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Password reset email sent!')),
  );
}

String get currentUserEmail => currentUser.user?.email ?? '';

String get currentUserUid => currentUser.user?.uid ?? '';

String get currentUserDisplayName => currentUser.user?.displayName ?? '';

String get currentUserPhoto => currentUser.user?.photoURL ?? '';

String get currentPhoneNumber => currentUser.user?.phoneNumber ?? '';

// Set when using phone verification (after phone number is provided).
String _phoneAuthVerificationCode;
// Set when using phone sign in in web mode (ignored otherwise).
ConfirmationResult _webPhoneAuthConfirmationResult;

Future beginPhoneAuth({
  BuildContext context,
  String phoneNumber,
  VoidCallback onCodeSent,
}) async {
  if (kIsWeb) {
    _webPhoneAuthConfirmationResult =
        await FirebaseAuth.instance.signInWithPhoneNumber(phoneNumber);
    onCodeSent();
    return;
  }
  // If you'd like auto-verification, without the user having to enter the SMS
  // code manually. Follow these instructions:
  // * For Android: https://firebase.google.com/docs/auth/android/phone-auth?authuser=0#enable-app-verification (SafetyNet set up)
  // * For iOS: https://firebase.google.com/docs/auth/ios/phone-auth?authuser=0#start-receiving-silent-notifications
  // * Finally modify verificationCompleted below as instructed.
  await FirebaseAuth.instance.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    timeout: Duration(seconds: 5),
    verificationCompleted: (phoneAuthCredential) async {
      await FirebaseAuth.instance.signInWithCredential(phoneAuthCredential);
      // If you've implemented auto-verification, navigate to home page or
      // onboarding page here manually. Uncomment the lines below and replace
      // DestinationPage() with the desired widget.
      // await Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (_) => DestinationPage()),
      // );
    },
    verificationFailed: (exception) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error with phone verification: ${exception.message}'),
      ));
    },
    codeSent: (verificationId, _) {
      _phoneAuthVerificationCode = verificationId;
      onCodeSent();
    },
    codeAutoRetrievalTimeout: (_) {},
  );
}

Future verifySmsCode({
  BuildContext context,
  String smsCode,
}) async {
  if (kIsWeb) {
    return signInOrCreateAccount(
        context, () => _webPhoneAuthConfirmationResult.confirm(smsCode));
  } else {
    final authCredential = PhoneAuthProvider.credential(
        verificationId: _phoneAuthVerificationCode, smsCode: smsCode);
    return signInOrCreateAccount(
      context,
      () => FirebaseAuth.instance.signInWithCredential(authCredential),
    );
  }
}

DocumentReference get currentUserReference => currentUser.user != null
    ? UsersRecord.collection.doc(currentUser.user.uid)
    : null;
