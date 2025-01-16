import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:flutter/foundation.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//import 'package:sample_flutter_firebase_notifications_tutorial/controllers/auth_service.dart';
//import 'package:sample_flutter_firebase_notifications_tutorial/controllers/crud_service.dart';
//import 'package:sample_flutter_firebase_notifications_tutorial/main.dart';

class PushNotifications {
  static final _firebaseMessaging = FirebaseMessaging.instance;

  // request notification permission
  static Future init() async {
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: false,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );

    final token =await _firebaseMessaging.getToken();
    print("device token:$token");
  }
}