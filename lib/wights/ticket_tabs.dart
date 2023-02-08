import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {



  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key? key,required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           FittedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xfff4f6fd)),
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white),
              child: Center(child: Text(firstTab)),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.horizontal(right: Radius.circular(50)),
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
