import 'notifier.dart';

class SMSNotifier implements Notifier {
  @override
  void send(String message) {
    print('📱 SMS sent: $message');
  }
}
