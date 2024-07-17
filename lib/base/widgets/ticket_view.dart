import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle_dot.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            //Blue Part
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    //Departure and destination
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("NYC",
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        const BigDot(),
                        Expanded(
                            child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDivisor: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )),
                        const BigDot(),
                        Expanded(child: Container()),
                        Text("LDN",
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                    //names with times
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("New York",
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.white)),
                        Expanded(child: Container()),
                        Text(
                          "8H 30M",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "London",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
            //Divider
            Container(
              color: AppStyles.ticketRed,
              child: const Row(
                children: [
                  BigCircleDot(
                    isRight: false,
                  ),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      width: 6,
                      randomDivisor: 16,
                    ),
                  ),
                  BigCircleDot(
                    isRight: true,
                  ),
                ],
              ),
            ),

            //Orange part
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppStyles.ticketRed,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  ),
                ),
                child: Column(
                  children: [
                    //date
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "May",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "08:00 AM",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "23",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    //names with times
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Date",
                          style: AppStyles.headLineStyle3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "Departure Time",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        Text(
                          "Number",
                          style: AppStyles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
