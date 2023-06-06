import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
class NotifyHelper{
FlutterLocalNotificationsPlugin
  flutterLocalNotificationsPlugin=
    FlutterLocalNotificationsPlugin();
initializeNotification()async{
  final DarwinInitializationSettings initializationSettingsDarwin =
  DarwinInitializationSettings(
    requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification);
  final AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('app_icon');
  final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
      );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse);
}
    displayNotification({required String title,required String body})async{
  print("doing test");
  var androidNotificationDetails =
  AndroidNotificationDetails('your channel id', 'your channel name',
      channelDescription: 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker');
  var iOSPlatformChannelSpecifics=new NotificationDetails();
    }




void requestIOSPermissions(){
  flutterLocalNotificationsPlugin
  .resolvePlatformSpecificImplementation<
  IOSFlutterLocalNotificationsPlugin>()
      ?.requestPermissions(
    alert: true,
    badge: true,
    sound: true
  );
}
void requestAndPermissions(){
  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
      AndroidFlutterLocalNotificationsPlugin>()
      ?.requestPermission();
}
Future onDidReceiveNotificationResponse(
    NotificationResponse notificationResponse) async {
  final String? payload = notificationResponse.payload;
  if (notificationResponse.payload != null) {
    debugPrint('notification payload: $payload');
  }else{
    print("Notification Done");
  }
  Get.to(()=>Container(color: Colors.white,));

}
Future onDidReceiveLocalNotification(
    int id, String? title, String? body, String? payload) async {
  // display a dialog with the notification details, tap ok to go to another page
  // showDialog(
  //   context: context,
  //   builder: (BuildContext context) =>
  //       CupertinoAlertDialog(
  //         title: Text(title),
  //         content: Text(body),
  //         actions: [
  //           CupertinoDialogAction(
  //             isDefaultAction: true,
  //             child: Text('Ok'),
  //             onPressed: () async {
  //               Navigator.of(context, rootNavigator: true).pop();
  //               await Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => SecondScreen(payload),
  //                 ),
  //               );
  //             },
  //           )
  //         ],
  //       ),
  // );
  Get.dialog(Text("Welcome Flutter"));
}

}