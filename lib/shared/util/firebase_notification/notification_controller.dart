// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:awesome_notifications_fcm/awesome_notifications_fcm.dart';
// import 'package:flutter/material.dart';

// class NotificationController {
//   //  *********************************************
//   ///     REMOTE NOTIFICATION EVENTS
//   ///  *********************************************

//   /// Use this method to execute on background when a silent data arrives
//   /// (even while terminated)
//   @pragma("vm:entry-point")
//   static Future<void> mySilentDataHandle(FcmSilentData silentData) async {
//     print('"SilentData": ${silentData.toString()}');

//     if (silentData.createdLifeCycle != NotificationLifeCycle.Foreground) {
//       print("bg");
//     } else {
//       print("FOREGROUND");
//     }
//   }

//   /// Use this method to detect when a new fcm token is received
//   @pragma("vm:entry-point")
//   static Future<void> myFcmTokenHandle(String token) async {
//     debugPrint('FCM Token:"$token"');
//   }

//   /// Use this method to detect when a new native token is received
//   @pragma("vm:entry-point")
//   static Future<void> myNativeTokenHandle(String token) async {
//     debugPrint('Native Token:"$token"');
//   }
// }
