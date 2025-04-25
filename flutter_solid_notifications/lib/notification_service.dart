import 'notifier.dart';

class NotificationService {
  final Notifier notifier;

  NotificationService(this.notifier);

  void notify(String message) {
    notifier.send(message);
  }
}
