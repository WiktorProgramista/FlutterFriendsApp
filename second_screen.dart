import 'package:flutter/material.dart';
import 'package:project0/screens/home_page.dart';

class SecondScreen extends StatelessWidget {
  final peoples = [
      "Amelia S",
      "James B",
      "Harry G",
      "Billy O",
      "Jessica L",
      "Angelina J",
      "Alvaro L",
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
            Colors.pink,
            Colors.purple,
          ])
        ),
        child: ListView(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Top Pictures",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  ),
                  Text("16 June 2021", style: TextStyle(color: Colors.white),),
                ]
              ),
              ),
            ),
            SizedBox(height: 20,),
            Container(

              height: 400,
              width: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                    height: 325,
                    width: 230,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Wrap(
                      children: [
                        Text("EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                  Container(
                      width: 150,
                      height: 50,
                      child: Padding(padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.share, color: Colors.white,)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.message, color: Colors.white,)),
                        ],
                      ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.purple[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    
                    ]
                    ),
                  );
                }
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: peoples.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("16 June 2021"),
                        Container(
                    width: 400,
                    height: 80,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 60,
                          ),
                          Text(peoples[index], style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                        ),
                      ]
                  )); 
                }
              ),
              ),
            ),
          ],
        ),
      ),
            );
    
  }
}