import 'package:fast_app_base/app.dart';
import 'package:fast_app_base/screen/notification/s_notification.dart';
import 'package:flutter/material.dart';
import '../../../../common/common.dart';

class TossAppBar extends StatefulWidget {
  static const double appBarHeight =60;

  const TossAppBar({super.key});

  @override
  State<TossAppBar> createState() => _TossAppBarState();
}

class _TossAppBarState extends State<TossAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TossAppBar.appBarHeight,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          Image.asset(
            "$basePath/icon/toss.png",
            height: 30,
          ),
          emptyExpanded,
          Image.asset(
            "$basePath/icon/map_point.png",
            height: 30,
          ),
          width10,
          Tap(
            onTap: (){
              Nav.push(const NotificationScreen());
            },
            child: Stack(
              children: [
                Image.asset(
                  "$basePath/icon/notification.png",
                  height: 30,
                ),
                if (_showRedDot) Positioned.fill(
                    child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 6,
                    height: 6,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  ),
                ))
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
