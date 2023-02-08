import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/screens/ticket_view.dart';

import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import '../wights/columlayout.dart';
import '../wights/layout_builder_widght.dart';
import '../wights/ticket_tabs.dart';


class TicketScreen extends StatelessWidget {

  const TicketScreen({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final size =AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeghit(20),vertical: AppLayout.getHeghit(20)),
            children: [
              Gap(AppLayout.getHeghit(40)),
              Text("Tickets",style: Styles.headLineStyle1,),
              AppTicketTabs(firstTab: "Upciming", secondTab: "Previous"),
              Gap(AppLayout.getHeghit(20)),

              Container(
                // padding: EdgeInsets.only(left: AppLayout.getHeghit(15)),
                child: Ticketview(ticket: ticketList[0],iscolor: true,),
              ),
              SizedBox(height: 1,),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayOut(
                          alignment: CrossAxisAlignment.start,
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          iscolor: false,
                        ),

                        AppColumnLayOut(
                          alignment: CrossAxisAlignment.end,
                          firstText: "5221 564225",
                          secondText: "Passport",
                          iscolor: false,
                        ),
                      ],
                    ),
                    AppLayoutBuilderWidget(sections: 15,iscolor: false,width: 5,),
                    Gap(AppLayout.getHeghit(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayOut(
                          alignment: CrossAxisAlignment.start,
                          firstText: "365844 646574",
                          secondText: "Number of E-ticket",
                          iscolor: false,
                        ),

                        AppColumnLayOut(
                          alignment: CrossAxisAlignment.end,
                          firstText: "B2SG28",
                          secondText: "Booking code",
                          iscolor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeghit(20)),
                    AppLayoutBuilderWidget(sections: 15,iscolor: false,width: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gap(5),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/logo.jpg",scale: 11,),
                                Text(" *** 2462",style: Styles.headLineStyle3,)
                              ],
                            ),
                            Text("Payment method",style: Styles.headLineStyle4,),

                          ],
                        ),
                        AppColumnLayOut(
                          alignment: CrossAxisAlignment.end,
                          firstText: "\$249.99",
                          secondText: "Price",
                          iscolor: false,
                        ),


                      ],
                      
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1,),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21),

                  )
                ),
                margin: EdgeInsets.only(left: 15,right: 15),
                padding: EdgeInsets.only(top: 15 ,bottom: 15),
                child: Container(
                  margin: EdgeInsets.only(left: 15,right: 15),

                  child: ClipRRect(
                     borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(data: "https://github.com/martinovovo",
                        barcode: Barcode.code128(),
                      color: Styles.textColor,
                      height: 70,
                      drawText: false,
                    ),
                  ),
                ),
              )
              // bar code
            ],
          )


        ],
      ),

    );
  }
}
