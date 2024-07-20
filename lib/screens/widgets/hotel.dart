import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppStyles.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppMedia.hotelRoom),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Open Space",
              style:
                  AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Open Space",
              style:
                  AppStyles.headLineStyle2.copyWith(color: AppStyles.kakiColor),
            ),
          ),
        ],
      ),
    );
  }
}
