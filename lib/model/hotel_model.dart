import 'dart:convert';
class Hotel{
  dynamic? image;
  String? place;
  String? destination;
  int ? price;
  Hotel({this.price, this.destination, this.place, this.image});  //construtor

  factory Hotel.formJson(Map<String,dynamic> paredJson){
    return  Hotel(
        image : paredJson["image"],
        place : paredJson["place"],
        destination : paredJson["destination"],
        price : paredJson["price"]
    );
  }



}