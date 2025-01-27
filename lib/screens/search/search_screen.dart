import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tab.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "What are \nyou looking for",
            style: AppStyles.headLineStyle1.copyWith(
              fontSize: 35,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTicketTab(),
          const SizedBox(
            height: 25,
          ),
          const AppTextIcon(
            text: "Departure",
            icon: Icons.flight_takeoff_rounded,
          ),
          const SizedBox(
            height: 20,
          ),
          const AppTextIcon(
            text: "Arrival",
            icon: Icons.flight_land_outlined,
          ),
        ],
      ),
    );
  }
}
