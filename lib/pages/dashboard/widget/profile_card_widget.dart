import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  "assets/user1.jpg",
                  height: 60,
                  width: 60,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                children: const [
                  Text(
                    "Kathy Walker",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("HR Manager"),
                ],
              )
            ],
          ),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          profileListTile("Joined Date", "18-Apr-2021"),
          profileListTile("Projects", "32 Active"),
          profileListTile("Accomplishment", "125"),
        ],
      ),
    );
  }

  Widget profileListTile(text, value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
          ),
        ],
      ),
    );
  }
}
