import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class AppColumnLayOut extends StatelessWidget {
  final String firstText;
  final String secondText;
  final CrossAxisAlignment alignment;
  final bool? iscolor;
  const AppColumnLayOut({Key? key,
    required this.firstText,
    required this.secondText,
  required this.alignment,
  this.iscolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment : alignment,
        children: [
          Text(firstText,style: iscolor==null? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,
        ),
          Gap(AppLayout.getHeghit(5)),
          Text(secondText,     style: iscolor==null? Styles.headLineStyle4
        .copyWith(color: Colors.white) :Styles.headLineStyle4,
    ),


        ],
      );
  }
}
