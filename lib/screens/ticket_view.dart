import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import '../wights/columlayout.dart';
import '../wights/layout_builder_widght.dart';
import '../wights/thick_container.dart';

class Ticketview extends StatelessWidget {
  Map<String, dynamic> ticket;
  final bool? iscolor;
  Ticketview({Key? key, required this.ticket,this.iscolor}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print("ticket ${ticket["form"]["code"]}");

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * .85,
      height: AppLayout.getHeghit(167),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeghit(16),),
        child: Column(
          children: [
            // showing the blue part of the card/ticket
            Container(
              decoration: BoxDecoration(
                  color: iscolor==null? Color(0xff526799):Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeghit(21),),
                      topRight: Radius.circular(AppLayout.getHeghit(21),))),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["form"]["code"],
                        style: iscolor==null ?   Styles.headLineStyle3.copyWith(color: Colors.white):                            Styles.headLineStyle3,


                      ),
                      Expanded(child: Container()),
                      ThickContainer(iscolor: true,),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeghit(24),
                            child: AppLayoutBuilderWidget(
                              sections: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(
                              Icons.local_airport_rounded,
                              color: iscolor==null? Colors.white:Color(0xffbaccf7),
                            ),
                          )),
                        ],
                      )),
                      ThickContainer(iscolor: true,),
                      Expanded(child: Container()),
                      Text(
                        ticket["to"]["code"],
                        style: iscolor==null?
                            Styles.headLineStyle3.copyWith(color: Colors.white):
                        Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  Gap(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["form"]["name"],
                          style: iscolor==null?  Styles.headLineStyle4
                              .copyWith(color: Colors.white):Styles.headLineStyle4
                          ,
                        ),
                      ),
                      Text(
                        ticket["flying_time"],
                        style:iscolor==null?
                        Styles.headLineStyle4.copyWith(color: Colors.white):
                        Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          ticket["to"]["name"],
                          textAlign: TextAlign.end,
                          style: iscolor==null?
                          Styles.headLineStyle4
                              .copyWith(color: Colors.white):
                          Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // showing the orange part of the card/ticket
            Container(
              color:iscolor==null?  Styles.orangetiketColor :Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: iscolor==null?  Colors.white :Colors.white ,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.all(AppLayout.getHeghit(6)),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 12).floor(),
                                (index) => SizedBox(
                                      width: AppLayout.getWidth(5),
                                      height: AppLayout.getHeghit(1),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: iscolor==null?  Colors.white :Colors.grey.shade300 ,
                                        ),
                                      ),
                                    )),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: iscolor==null?  Colors.white :Colors.white ,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            // bottom part of the orange card/ticket
            Container(
              decoration: BoxDecoration(
                  color:iscolor==null? Styles.orangetiketColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(iscolor==null? 21:0),
                      bottomRight: Radius.circular(iscolor==null? 21:0))),
              padding:
                  EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayOut(firstText: ticket["date"],
                          secondText: "Date",
                          alignment: CrossAxisAlignment.start,
                         iscolor: false,),
                      AppColumnLayOut(firstText: ticket["departure"],
                        secondText:  "Departure time",
                        alignment: CrossAxisAlignment.center,
                        iscolor: false,),
                      AppColumnLayOut(firstText:   ticket["number"].toString(),

                        secondText:  "Number",
                        alignment: CrossAxisAlignment.end,
                        iscolor: false,),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       ticket["date"],
                      //       style:iscolor==null? Styles.headLineStyle3
                      //           .copyWith(color: Colors.white):Styles.headLineStyle3,
                      //     ),
                      //     Gap(5),
                      //     Text(
                      //       "Date",
                      //       style: iscolor==null? Styles.headLineStyle4
                      //           .copyWith(color: Colors.white) :Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       ticket["departure"],
                      //       style:iscolor==null ? Styles.headLineStyle3
                      //           .copyWith(color: Colors.white):Styles.headLineStyle3,
                      //     ),
                      //     Gap(5),
                      //     Text(
                      //       "Departure time",
                      //       style: iscolor==null ? Styles.headLineStyle4
                      //           .copyWith(color: Colors.white): Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       ticket["number"].toString(),
                      //       style: iscolor==null? Styles.headLineStyle3
                      //           .copyWith(color: Colors.white):Styles.headLineStyle3,
                      //     ),
                      //     Gap(5),
                      //     Text(
                      //       "Number",
                      //       style:iscolor==null? Styles.headLineStyle4
                      //           .copyWith(color: Colors.white):Styles.headLineStyle4,
                      //     ),
                      //   ],
                      // ),
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
