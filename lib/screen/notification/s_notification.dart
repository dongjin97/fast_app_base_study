import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';

import 'd_notification.dart';
import 'notification_dummy.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkGrey,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('알림'),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => NotificationItemWidget(
                        notificiation: notificationDummies[index],
                        onTap: () {
                          NotificationDialog([notificationDummies[0],notificationDummies[1]]).show();
                        },
                      ),
                  childCount: notificationDummies.length)),
        ],
      ),
    );
  }
}
