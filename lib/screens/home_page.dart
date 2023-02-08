import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_ui/screens/ticket_view.dart';
import '../utils/app_info_list.dart';
import '../utils/app_style.dart';
import 'hotels_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      // appBar: AppBar(
      //   title: Text("pramod"),
      // ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        Gap(4),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/logo.jpg")
                        )
                      ),
                    ),
                  ],
                ),
                Gap(25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff4f6fd)),
                  child: Row(
                    children: [
                      Icon(Icons.search_rounded),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Flights",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                        onTap: () {
                          print("you are tapped");
                        },
                        child: Text(
                          "View all",
                          style: Styles.textStyle.copyWith(
                            color: Styles.primaryColor,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
          Gap(15),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(right: 20),
              child: Row(
                children: ticketList.map((singleTicket) => Ticketview(ticket: singleTicket))
                    .toList(),
              )),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headLineStyle2,
                ),
                InkWell(
                    onTap: () {
                      print("you are tapped");
                    },
                    child: Text(
                      "View all",
                      style: Styles.textStyle.copyWith(
                        color: Styles.primaryColor,
                      ),
                    ))
              ],
            ),
          ),
          Gap(20),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList
                    .map((singlehotel) => HotelScreen(hotel2: singlehotel))
                    .toList(),
              )),
        ],
      ),
    );
  }
}
