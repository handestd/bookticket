import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/layout_builder_widget.dart';
import 'package:bookticket/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:bookticket/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class TicketView extends StatelessWidget {

  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: 169,
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          /*
          * showing the blue part of the card/ticket
          * */
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(21)), topRight: Radius.circular(21))
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black ),),
                      Expanded(child: Container(

                      )),
                      ThickContainer(isColor: false),
                      Expanded(child: Container(
                        child: Stack(
                          children: [
                            SizedBox(
                            height: AppLayout.getHeight(24),
                            child: const AppLayoutBuilderWidget(isColor: null, sections: 10,),
                          ),
                            Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: isColor == null ? Colors.white : Color(0xFF8ACCF7),),)),
                          ]
                        ),
                      )),
                      


                      ThickContainer(isColor: false),
                      Expanded(child: Container(

                      )),
                      Text(ticket['to']['code'], style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white :Colors.black),)
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: AppLayout.getWidth(100),child: Text(ticket['from']['name'], style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.grey.shade500),)),
                      Text(ticket['flying_time'], style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.grey.shade500),),
                      SizedBox(width: AppLayout.getWidth(100),child: Text(ticket['to']['name'],textAlign: TextAlign.end, style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.grey.shade500),)),
                    ],
                  ),
                ],
              ),
            ),
          /*
          showing the orange part of the card/ticket
           */
            Container(
              color: isColor == null ? Styles.orangeColor: Colors.white,
              child: Row(

                children: [
                  SizedBox(

                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          children: List.generate((constraints.constrainWidth() / 15).floor(), (index) => SizedBox(
                            width: 5,
                            height: 1.5,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: isColor == null ? Colors.white : Colors.grey.shade500
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(

                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(isColor == null ? 21 : 0), bottomRight: Radius.circular(isColor == null ? 21 : 0))
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(ticket['date'], style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black ),),
                          const Gap(5),
                          Text("DATE", style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.grey.shade500 ),)
                          
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Text(ticket['departure_time'], style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black ),),
                          const Gap(5),
                          Text("Departure time", style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.grey.shade500 ),)

                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(ticket['number'].toString(), style: Styles.headLineStyle3.copyWith(color: isColor == null ? Colors.white : Colors.black ),),
                          const Gap(5),
                          Text("Mumber", style: Styles.headLineStyle4.copyWith(color: isColor == null ? Colors.white : Colors.grey.shade500 ),)

                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
