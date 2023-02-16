// import 'package:awesome_notifications/awesome_notifications.dart';
// import 'package:awesome_notifications_fcm/awesome_notifications_fcm.dart';
// import 'package:hyper_ui/shared/util/firebase_notification/notification_controller.dart';
// import 'package:flutter/material.dart';

// class FirebaseNotification {
//   static initialize() async {
//     await FirebaseNotification.initializeAwesomeNotifications();
//     await FirebaseNotification.requestNotificationPermission();
//     await FirebaseNotification.getFirebaseMessagingToken();
//   }

//   static initializeAwesomeNotifications() async {
//     await AwesomeNotificationsFcm().initialize(
//       onFcmSilentDataHandle: NotificationController.mySilentDataHandle,
//       onFcmTokenHandle: NotificationController.myFcmTokenHandle,
//       onNativeTokenHandle: NotificationController.myNativeTokenHandle,
//       // This license key is necessary only to remove the watermark for
//       // push notifications in release mode. To know more about it, please
//       // visit http://awesome-notifications.carda.me#prices
//       licenseKey: null,
//       debug: true,
//     );
//   }

//   static requestNotificationPermission() async {
//     AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
//       if (!isAllowed) {
//         // This is just a basic example. For real apps, you must show some
//         // friendly dialog box before call the request method.
//         // This is very important to not harm the user experience
//         AwesomeNotifications().requestPermissionToSendNotifications();
//       }
//     });
//   }

//   // Request FCM token to Firebase
//   static Future<String> getFirebaseMessagingToken() async {
//     String firebaseAppToken = '';
//     if (await AwesomeNotificationsFcm().isFirebaseAvailable) {
//       try {
//         firebaseAppToken =
//             await AwesomeNotificationsFcm().requestFirebaseAppToken();
//       } catch (exception) {
//         debugPrint('$exception');
//       }
//     } else {
//       debugPrint('Firebase is not available on this project');
//     }
//     return firebaseAppToken;
//   }
// }
