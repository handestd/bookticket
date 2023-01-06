import 'package:bookticket/utils/app_styles.dart';
import 'package:bookticket/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/images/img_1.png")
                  )
                ),
              ),
              Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  Gap(2),
                  Text("New-York", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500),),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0x807A7A7A),


                    ),
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF526799),
                          ),
                          padding: EdgeInsets.all(3),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size:15),
                        ),
                        Gap(5),
                        const Text("Premium status", style: TextStyle(color: Color(0xFF526799), fontWeight: FontWeight.w600),)
                      ],
                    ),
                  )
                ],
              ),
              Spacer(),
              Column(

                children: [

                  InkWell(
                      onTap: ()=> print("Edit clicked"),
                      child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),)
                  ),

                ],
              )
            ],
          ),
          Gap(8),
          Divider(color: Colors.red,height: 2,),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,

                  borderRadius: BorderRadius.circular(21),
                ),
              ),
              Positioned(
                  top: -40,
                  right: -30,
                  child:
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration
                        (
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Colors.white),
                        ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_circle_filled, color: Styles.primaryColor,size: 27,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new award", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("You have 95 flights in a year", style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16),),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Gap(25),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          Container(
            child: Column(
              children: [
                Gap(15),

                Text("192802", style: TextStyle(fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600),),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),

                  Text("23 May 2021", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                ],),
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "23 042", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Airline CO", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "24", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "McDonal's", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: "52 340", secondText: "Miles", alignment: CrossAxisAlignment.start),
                    AppColumnLayout(firstText: "Exuma", secondText: "Received from", alignment: CrossAxisAlignment.end),
                  ],
                ),
                Gap(25),
                Container(
                  child: InkWell(child: Text("How to get more miles"),) ,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
