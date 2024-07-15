import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(21),
              topRight: Radius.circular(21),
            ),
          ),
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("NYC",
                      style: AppStyles.headLineStyle3
                          .copyWith(color: Colors.white)),
                  Expanded(child: Container()),
                  const BigDot(),
                  const Expanded(
                      child: Stack(
                    children: [
                      SizedBox(
                        child: AppLayoutBuilderWidget(
                          randomDivisor: 6,
                        ),
                      ),
                      Center(
                        child: Text("Plane"),
                      )
                    ],
                  )),
                  const BigDot(),
                  Expanded(child: Container()),
                  Text("NYC",
                      style: AppStyles.headLineStyle3
                          .copyWith(color: Colors.white)),
                ],
              ),
              Row(),
            ],
          )),
    );
  }
}
