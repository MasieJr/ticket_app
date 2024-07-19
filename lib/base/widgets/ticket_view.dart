import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle_dot.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

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
                        TextStyleThird(
                          text: ticket["from"]["code"],
                        ),
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
                        TextStyleThird(
                          text: ticket["to"]["code"],
                        )
                      ],
                    ),
                    //names with times
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["from"]["name"],
                          ),
                        ),
                        Expanded(child: Container()),
                        Text(
                          ticket["flying_time"],
                          style: AppStyles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Expanded(child: Container()),
                        SizedBox(
                          width: 100,
                          child: TextStyleFourth(
                            text: ticket["to"]["name"],
                            align: TextAlign.end,
                          ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        alignment: CrossAxisAlignment.start,
                        topText: ticket["date"],
                        bottomText: "DATE",
                      ),
                      AppColumnTextLayout(
                        alignment: CrossAxisAlignment.center,
                        topText: ticket["departure_time"],
                        bottomText: "Departure Time",
                      ),
                      AppColumnTextLayout(
                        alignment: CrossAxisAlignment.end,
                        topText: ticket["number"].toString(),
                        bottomText: "Number",
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
