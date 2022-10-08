import 'user_mapper.dart';

import '../../domain/entities/enum/notification_type.dart';
import '../../domain/entities/notification.dart';
import '../source/api/model/notification/notification_model.dart';

class NotificationMapper {
  final UserMapper _userMapper;

  NotificationMapper(this._userMapper);

  NotificationType _notificationTypeFromString(String string) {
    switch (string) {
      case 'COMMENT':
        return NotificationType.comment;
      case 'FOLLOW_DEMAND':
        return NotificationType.followDemand;
      case 'FOLLOW_REFUSED':
        return NotificationType.followRefused;
      case 'FOLLOW_ACCEPTED':
        return NotificationType.followAccepted;
      case 'DISLIKE':
        return NotificationType.dislike;
      default:
        return NotificationType.like;
    }
  }

  Notification mapApiNotificationToNotification(
      ApiNotificationModel apiNotificationModel) {
    return Notification(
      id: apiNotificationModel.id,
      dateHour: apiNotificationModel.dateHour,
      isSeen: apiNotificationModel.isSeen,
      contentLinked: apiNotificationModel.contentLinked,
      notificationType:
          _notificationTypeFromString(apiNotificationModel.notificationType),
      userRecipient:
          _userMapper.mapApiUserToUser(apiNotificationModel.userRecipient),
      userLinked: apiNotificationModel.userLinked == null
          ? null
          : _userMapper.mapApiUserToUser(apiNotificationModel.userLinked!),
    );
  }
}
