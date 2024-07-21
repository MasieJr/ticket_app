import 'package:flutter/material.dart';
import 'package:ticket_app/screens/search/widgets/app_tabs.dart';

class AppTicketTab extends StatelessWidget {
  const AppTicketTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child: Row(
        children: [
          AppTabs(
            width: size.width,
            tabName: "Airline Tickets",
            isSelected: true,
          ),
          AppTabs(
            width: size.width,
            tabName: "Hotels",
            isSelected: false,
          ),
        ],
      ),
    );
  }
}
