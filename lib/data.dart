import 'package:flutter/material.dart';

class Property {

  String label;
  String name;
  String price;
  String location;
  String sqm;
  String review;
  String frontImage;
  List<String> images;

  Property(this.label, this.name, this.price, this.location, this.sqm, this.review, this.frontImage, this.images);

}

List<Property> getPropertyList(){
  return <Property>[
    Property(
      "SALE",
      "Clinton Villa",
      "3,500.00",
      "Los Angeles",
      "2,456",
      "4.4",
      "assets/images/house_01.jpg",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    Property(
      "RENT",
      "Hilton House",
      "3,100.00",
      "California",
      "2,100",
      "4.1",
      "assets/images/house_02.jpg",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    Property(
      "SALE",
      "Ibe House",
      "4,500.00",
      "Florida",
      "4,100",
      "4.5",
      "assets/images/house_03.jpg",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
  ];
}