import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import '../wights/double_text_widget.dart';
import '../wights/icon_text_widget.dart';
import '../wights/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Gap(40),
          Text(
            "What are\nyou lookin for ?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(20),
          // FittedBox(
          //   child: Container(
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(50),
          //         color: Color(0xfff4f6fd)),
          //     padding: EdgeInsets.all(3.5),
          //     child: Row(
          //       children: [
          //         Container(
          //           width: MediaQuery.of(context).size.width * .44,
          //           padding: EdgeInsets.symmetric(vertical: 7),
          //           decoration: BoxDecoration(
          //               borderRadius:
          //                   BorderRadius.horizontal(left: Radius.circular(50)),
          //               color: Colors.white),
          //           child: Center(child: Text("Airline tickets")),
          //         ),
          //         Container(
          //           width: MediaQuery.of(context).size.width * .44,
          //           padding: EdgeInsets.symmetric(vertical: 7),
          //           decoration: BoxDecoration(
          //             borderRadius:
          //                 BorderRadius.horizontal(right: Radius.circular(50)),
          //           ),
          //           child: Center(child: Text("Hotel")),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          AppTicketTabs(firstTab: "Airline Tickets",secondTab: "Hotels Tickets",),
          Gap(25),
          AppIconText(text: "Departure", icon: Icons.flight_takeoff),
          Gap(20),
          AppIconText(text: "Arrival", icon: Icons.flight_land_outlined),
          Gap(25),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: Color(0xD91130ce),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
                'Find Tickets',
              style: Styles.textStyle.copyWith(color: Colors.white),
            ),
          ),
          Gap(35),
          AppDouableTextWidget(bigText: "Upcoming Flights", smallText: "View all"),
          Gap(25),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.42,
               height: AppLayout.getHeghit(410),
                padding : EdgeInsets.symmetric(horizontal: 15,vertical: 15),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ],
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeghit(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/plate4.jpg"
                          )
                        )
                      ),
                    ),
                    Gap(12),
                    Text("20 % discount on the early booking of this flight, Don't miss",
                    style: Styles.headLineStyle2,)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.44,
                        height: AppLayout.getHeghit(200),
                        decoration: BoxDecoration(
                            color: Color(0xff3AB888),
                            borderRadius: BorderRadius.circular(AppLayout.getHeghit(18))
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeghit(15),horizontal: AppLayout.getHeghit(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),)
                            , Gap(AppLayout.getHeghit(10)),
                            Text("Take the survey about services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 17),)

                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all((AppLayout.getHeghit(30))),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: Color(0xff189999)),
                            color: Colors.transparent,

                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeghit(15)),
                  Container(
                    width: MediaQuery.of(context).size.width*0.44,
                    height: AppLayout.getHeghit(190),
                    padding : EdgeInsets.symmetric(vertical: AppLayout.getHeghit(15),horizontal: AppLayout.getHeghit(15)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeghit(18)),
                      color: Color(0xffec6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeghit(5)),
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: "@",style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: "@",style: TextStyle(fontSize: 50),
                              ),
                              TextSpan(
                                text: "@",style: TextStyle(fontSize: 30),
                              ),

                        ]))
                      ],
                    ),
                  )

                ],
              )
            ],
          )
          // AppDouableTextWidget


        ],
      ),
    );
  }
}
