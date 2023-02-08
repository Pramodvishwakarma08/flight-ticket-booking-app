import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  Map<String , dynamic> hotel2;
   HotelScreen({Key? key, required this.hotel2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("${hotel2["price"]}");
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 310,
      margin: EdgeInsets.only(left: 17, top: 15,bottom: 10

      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 5,
              spreadRadius: 5,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/${hotel2["image"]}",
                    ))),
          ),
          Gap(10),
          Text(hotel2["place"],
              style: Styles.headLineStyle2.copyWith(
                color: Styles.kakiColor,
              )),
          Text(hotel2["destination"],
              style: Styles.headLineStyle3.copyWith(
                color: Colors.white,
              )),
          Text("\$${hotel2["price"]}/night",
              style: Styles.headLineStyle1.copyWith(
                color: Styles.kakiColor,
              )),
        ],
      ),
    );
  }
}

