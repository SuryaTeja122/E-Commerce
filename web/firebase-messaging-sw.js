// Please see this file for the latest firebase-js-sdk version:
// https://github.com/firebase/flutterfire/blob/master/packages/firebase_core/firebase_core_web/lib/src/firebase_sdk_version.dart
importScripts("https://www.gstatic.com/firebasejs/10.7.0/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.0/firebase-messaging-compat.js");

firebase.initializeApp({
    apiKey: "AIzaSyC1yDsLvKvsCPfK65h6gZUAOwBCEPtmAyE",
    authDomain: "food-deliver-3eb84.firebaseapp.com",
    projectId: "food-deliver-3eb84",
    storageBucket: "food-deliver-3eb84.firebasestorage.app",
    messagingSenderId: "438653357883",
    appId: "1:438653357883:web:dbccccde908d91c345711e",
    
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});