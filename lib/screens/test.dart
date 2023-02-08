import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/hotel_model.dart';

class TestPage extends StatefulWidget {

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  var jsondecode;
  var s;
    Future<Hotel?> loadAsset() async{
    var loadJosn = await rootBundle.loadString("assets/json.json");
    var jsondecode = await json.decode(loadJosn);
    // print(jsondecode["destination"]);
    Hotel s =Hotel.formJson(jsondecode);
    return s;
  }

  @override
  Widget build(BuildContext context) {
      loadAsset();
    return  Scaffold(
      backgroundColor: Colors.white70,
      body : Center(
        child:  FutureBuilder(
          future: loadAsset(),
            builder: (c, AsyncSnapshot snapshot){
              return Column(
                  children: [
                    // Text({"${snapshot.data.p}"})
                         ],
        );})

      )



    );
  }
}
