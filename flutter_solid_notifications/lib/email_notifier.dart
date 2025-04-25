import 'notifier.dart';

class EmailNotifier implements Notifier {
  @override
  void send(String message) {
    print('📧 Email sent: $message');
  }
}
