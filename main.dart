//import 'package:e_comm_food/pages/login_page.dart';
// ignore_for_file: unused_element

import 'package:e_comm_food/push_notifications.dart';
import 'package:e_comm_food/services/auth/auth_gate.dart';
//import 'package:e_comm_food/services/auth/login_or_register.dart';
import 'package:e_comm_food/firebase_options.dart';
import 'package:e_comm_food/models/restaurant.dart';
//import 'package:e_comm_food/services/auth/notification_service.dart';
//import 'package:e_comm_food/pages/register_page.dart';
import 'package:e_comm_food/themes/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'pages/login_page.dart';

final navigatorKey =GlobalKey<NavigatorState>();

Future _firebaseBackgroundMessage(RemoteMessage message)async{
  if (message.notification != null) {
    print("Some notification Received");
  }
}

void main() async{
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message){
    if(message.notification !=null){
      print("Background Notification Tapped");
      navigatorKey.currentState!.pushNamed("/message",arguments: message);
    }
  });

  //initialize firebase messaging
  PushNotifications.init();

  //initialize firebase messaging
  if (kIsWeb) {
    PushNotifications.localNotiInit();
  }
  final RemoteMessage? message=
  await FirebaseMessaging.instance.getInitialMessage();
  

  if (message != null){
    print("Launched from terminated state");
    Future.delayed(Duration(seconds: 1),(){
        navigatorKey.currentState!.pushNamed("/message",arguments: message);
    });
  }
  runApp(
    MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
    ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const AuthGate(),
      theme:Provider.of<ThemeProvider>(context).themeData,
    );
  } 
}