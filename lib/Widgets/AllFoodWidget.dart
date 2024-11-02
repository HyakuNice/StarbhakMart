import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllFoodWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Column(
          children: [

            // Single Item
            for(int i=0; i<5; i++)
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]
                  ),
              
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/burger.jpg",
                              height: 130,
                            ),
                          ),
                          Text(
                            "Burger King Medium", 
                            style: TextStyle(
                              fontSize: 15, 
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
              
                              Icon(Icons.add_circle_outlined,
                              color: Colors.green,
                              size: 22,
                              ),
                            ],
                        ),
                      ],
                    ),   
                  ),
                )
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ]
                  ),
              
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/burger.jpg",
                              height: 130,
                            ),
                          ),
                          Text(
                            "Burger King Medium", 
                            style: TextStyle(
                              fontSize: 15, 
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 35),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rp. 50.000,00",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
              
                              Icon(Icons.add_circle_outlined,
                              color: Colors.green,
                              size: 22,
                              ),
                            ],
                        ),
                      ],
                    ),   
                  ),
                )
              ),

            ],
          ),


        ],),
      ),
    );
  }

}