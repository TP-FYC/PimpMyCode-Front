enum NotificationType {
  comment,
  followDemand,
  followRefused,
  followAccepted,
  like,
  dislike,
}

extension NotificationTypeExtension on NotificationType {
  String get string {
    switch (this) {
      case NotificationType.comment:
        return 'comment';
      case NotificationType.followDemand:
        return 'followDemand';
      case NotificationType.followRefused:
        return 'followRefused';
      case NotificationType.followAccepted:
        return 'followAccepted';
      case NotificationType.like:
        return 'like';
      case NotificationType.dislike:
        return 'dislike';
    }
  }
}
