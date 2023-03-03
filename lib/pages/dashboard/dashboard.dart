import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:flutter_hr_management/common/app_responsive.dart';

import 'widget/calender_widget.dart';
import 'widget/header_widget.dart';
import 'widget/notification_card_widget.dart';
import 'widget/profile_card_widget.dart';
import 'widget/recruitment_data_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          /// Header Part
          const HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const NotificationCardWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        if (AppResponsive.isMobile(context)) ...{
                          const CalendarWidget(),
                          const SizedBox(
                            height: 20,
                          ),
                        },
                        const RecruitmentDataWidget(),
                      ],
                    ),
                  ),
                  if (!AppResponsive.isMobile(context))
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: const [
                            CalendarWidget(),
                            SizedBox(
                              height: 20,
                            ),
                            ProfileCardWidget(),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
