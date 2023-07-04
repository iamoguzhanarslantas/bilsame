import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bilsame/src/common/common.dart' show logger;
import 'package:bilsame/src/user/user.dart' show IUserRepository;

class UserRepository extends IUserRepository {
  UserRepository(this.ref);

  final ProviderRef ref;

  @override
  Future<void> saveUser(User user) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .set({'email': user.email, 'name': user.displayName})
        .then(
          (value) => logger.i('User Added'),
        )
        .catchError(
          (error) => logger.e(error),
        );
  }

  @override
  Future<void> readUser(User user) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get()
        .then(
      (value) {
        if (value.exists) {
          logger.i('User Readed');
          logger.i(value.data());
        } else {
          logger.i('There is no data');
        }
      },
    ).catchError(
      (error) {
        logger.e(error);
      },
    );
  }

  @override
  Future<void> updateUser(User user) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .update({}).then(
      (value) {
        logger.i('User Updated');
      },
    ).catchError(
      (error) {
        logger.e(error);
      },
    );
  }

  @override
  Future<void> deleteUser(User user) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .delete()
        .then(
      (value) {
        logger.i('User Deleted');
      },
    ).catchError(
      (error) {
        logger.e(error);
      },
    );
  }
}
