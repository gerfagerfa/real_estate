import 'package:flutter/material.dart';
import 'package:real_estate/data.dart';

class Detail extends StatelessWidget {

  final Property property;

  Detail({@required this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Image.asset(
            property.frontImage,
            fit: BoxFit.fitWidth,
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    width: 80,
                    padding: EdgeInsets.symmetric(vertical: 4,),
                    child: Center(
                      child: Text(
                        "FOR " + property.label,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        property.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.yellow[700],
                            size: 20,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [

                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 14,
                          ),

                          SizedBox(
                            width: 4,
                          ),

                          Text(
                            property.location,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(
                            width: 8,
                          ),

                          Icon(
                            Icons.zoom_out_map,
                            color: Colors.white,
                            size: 16,
                          ),

                          SizedBox(
                            width: 4,
                          ),

                          Text(
                            property.sqm + " sq/m",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),

                      Row(
                        children: [

                          Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                            size: 14,
                          ),

                          SizedBox(
                            width: 4,
                          ),

                          Text(
                            property.review + " Reviews",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),

                SizedBox(
                  height: 24,
                ),

                Container(
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: EdgeInsets.all(24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              children: [

                                Container(
                                  height: 65,
                                  width: 65,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(property.ownerImage), 
                                      fit: BoxFit.cover,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),

                                SizedBox(
                                  width: 16,
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      "James Milner",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),

                                    SizedBox(
                                      height: 4,
                                    ),

                                    Text(
                                      "Property Owner",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey[500],
                                      ),
                                    ),

                                  ],
                                ),

                              ],
                            ),

                            Row(
                              children: [

                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[700].withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.phone,
                                      color: Colors.yellow[700],
                                      size: 20,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 16,
                                ),

                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow[700].withOpacity(0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.message,
                                      color: Colors.yellow[700],
                                      size: 20,
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 24, left: 24, bottom: 24,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [

                            buildFeature(Icons.hotel, "3 Bedroom"),
                            buildFeature(Icons.wc, "2 Bathroom"),
                            buildFeature(Icons.kitchen, "1 Kitchen"),
                            buildFeature(Icons.local_parking, "2 Parking"),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget buildFeature(IconData iconData, String text){
    return Column(
      children: [

        Icon(
          iconData,
          color: Colors.yellow[700],
          size: 28,
        ),

        SizedBox(
          height: 8,
        ),

        Text(
          text,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 16,
          ),
        ),

      ],
    );
  }
}