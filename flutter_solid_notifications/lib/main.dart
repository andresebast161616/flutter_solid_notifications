import 'package:flutter/material.dart';
import 'email_notifier.dart';
import 'sms_notifier.dart';
import 'notification_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final NotificationService emailService = NotificationService(EmailNotifier());
  final NotificationService smsService = NotificationService(SMSNotifier());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOLID Notifications',
      home: Scaffold(
        appBar: AppBar(title: Text('SOLID Notifications')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => emailService.notify("Order confirmed"),
                child: Text("Send Email"),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () => smsService.notify("Code: 123456"),
                child: Text("Send SMS"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
