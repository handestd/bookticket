import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/utils/app_info_list.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:bookticket/widgets/column_layout.dart';
import 'package:bookticket/widgets/layout_builder_widget.dart';
import 'package:bookticket/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20), vertical: AppLayout.getWidth(20)),
            children: [
              Gap(40),
              Text("Tickets", style: Styles.headLineStyle1,),
              Gap(20),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous",),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0],isColor: false,),
              ),
              const SizedBox(height: 1,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: '5221 364869',
                          secondText: 'passport',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilderWidget(isColor: true, sections: 15, width: 5,),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '0055 444 77147',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    Gap(20),
                    AppLayoutBuilderWidget(isColor: true, sections: 15, width: 5,),
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png", scale: 11,),
                                Text(" *** 2462", style: Styles.headLineStyle3.copyWith(color: Colors.black),)
                              ],
                            ),
                            Gap(5),
                            Text("Payment method", style: Styles.headLineStyle4,)

                          ],
                        ),
                        AppColumnLayout(
                          firstText: '\$249',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /*Bar code*/
              //Gap(20),

              const SizedBox(height: 1,),
              Container(

                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),
                  )
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                      barcode: Barcode.code128(),
                    ),
                  ),
                ),
              ),
              Gap(20),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: TicketView(ticket: ticketList[0], isColor: null),
              )


            ],
          ),
          Positioned(
            left: 22,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: 295,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ]
      ),
    );
  }
}
