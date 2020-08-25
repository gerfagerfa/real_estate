import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:real_estate/data.dart';

class Detail extends StatelessWidget {

  final Property property;

  Detail({@required this.property});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [

          Hero(
            tag: property.frontImage,
            child: Container(
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(property.frontImage), 
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.4, 1.0],
                    colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Container(
            height: size.height * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),

                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 28,
                      ),

                    ],
                  ),
                ),

                Expanded(
                  child: Container(),
                ),

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
                  padding: EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 16,),
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

              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          buildFeature(Icons.hotel, "3 Bedroom"),
                          buildFeature(Icons.wc, "2 Bathroom"),
                          buildFeature(Icons.kitchen, "1 Kitchen"),
                          buildFeature(Icons.local_parking, "2 Parking"),

                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24, left: 24, bottom: 16,),
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24, left: 24, bottom: 24,),
                      child: Text(
                        property.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24, left: 24, bottom: 16,),
                      child: Text(
                        "Photos",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 24,),
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: buildPhotos(property.images),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
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
            fontSize: 14,
          ),
        ),

      ],
    );
  }

  List<Widget> buildPhotos(List<String> images){
    List<Widget> list = [];
    list.add(SizedBox(width: 24,));
    for (var i = 0; i < images.length; i++) {
      list.add(buildPhoto(images[i], i));
    }
    return list;
  }

  Widget buildPhoto(String url, int index){
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            image: AssetImage(url), 
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}