import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final bool? iscolor;
  final int sections;
  final double width;
  const AppLayoutBuilderWidget({Key? key,
   this.iscolor,
    this.width=3,
  required this.sections}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constrains) {
        print("${constrains.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate((constrains.constrainWidth() / sections).floor(), (index) => SizedBox(
                width: width, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                      color: iscolor==null?Colors.white :Colors.grey.shade300),
                ),
              )),
        );
      },
    );
  }
}
