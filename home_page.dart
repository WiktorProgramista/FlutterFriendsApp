import 'package:flutter/material.dart';
import 'package:project0/screens/second_screen.dart';

class MyHomePage extends StatelessWidget {
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
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => SecondScreen()));
              },
              child: Container(
              height: 250,
              child: Hero(
                tag: "List", 
                child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 16),
                children: [
                  Container(
                    height: 200,
                    width: 180,
                    child: Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.chat),color: Colors.white,),
                        IconButton(onPressed: () {}, icon: Icon(Icons.phone),color: Colors.white,),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share),color: Colors.white,),
                      ],
                    ),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://images.unsplash.com/photo-1520155707862-5b32817388d6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80")),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Container(
                    height: 200,
                    width: 180,
                    child: Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.chat),color: Colors.white,),
                        IconButton(onPressed: () {}, icon: Icon(Icons.phone),color: Colors.white,),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share),color: Colors.white,),
                      ],
                    ),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80")),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Container(
                    height: 200,
                    width: 180,
                    child: Padding(
                      padding: EdgeInsets.only(top: 200),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.chat),color: Colors.white,),
                        IconButton(onPressed: () {}, icon: Icon(Icons.phone),color: Colors.white,),
                        IconButton(onPressed: () {}, icon: Icon(Icons.share),color: Colors.white,),
                      ],
                    ),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80")),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
              ),
            ),
            ),
            Padding(padding: EdgeInsets.only(right: 10)),
            Padding(padding: EdgeInsets.only(top: 40)),
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
          ]
          ),           
      ),          
    );
  }
}