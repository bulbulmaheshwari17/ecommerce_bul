import 'package:flutter/material.dart';
import 'package:ecom/laptops.dart';
import 'package:ecom/phones.dart';
import 'package:ecom/smartwatch.dart';
import 'package:ecom/Headphones.dart';
import 'package:ecom/tablet.dart';
import 'package:ecom/powerbank.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SG(),
  )
  );
}
class SG extends StatefulWidget {

  @override
  State<SG> createState() => _SGState();
}

class _SGState extends State<SG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 25),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white,
                      Colors.lightBlueAccent,
                    ],
                  ),
                ),
                height: 100,
                child: Row(
                    children: [
                      Text('Smart Gadgets',style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      ),
                      Icon(

                        Icons.arrow_forward_ios_outlined,
                        color: Colors.blue,),
                      Padding(
                          padding: const EdgeInsets.only(left: 9.0),
                          child:
                          Row(
                            children: [
                              Image.asset('assets/images/g.png',
                              ),
                            ],
                          )
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.0),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: [
                                  SizedBox(width: 5,),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AC()
                                        ),
                                      );
                                    },
                                    child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: AssetImage(
                                                'assets/images/laptop.jpg'),
                                          ),
                                          Text('Laptops',
                                            style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.bold ),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(width: 35.0,),
                                  GestureDetector(
                                    onTap: () {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)=>Phone()
                                        ));},
                                    child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: AssetImage(
                                                'assets/images/iphone.jpg'),
                                          ),
                                          Text('Phones',
                                            style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(width: 35.0,),
                                  GestureDetector(
                                    onTap: () {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)=>SW()
                                        ));
                                    },
                                    child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: AssetImage(
                                                'assets/images/smartwatch.jpg'),
                                          ),
                                          Text('Smart Watch',
                                            style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                    ),
                                  ),
                                ] // backgroundColor: Colors.transparent,
                            ),
                          ),
                          SizedBox(height: 30.0),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: [
                                  SizedBox(width: 5,),
                                  GestureDetector(
                                    onTap: () {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)=>Head()
                                        ));
                                      },
                                    child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: AssetImage(
                                                'assets/images/headphones.jpg'),
                                          ),
                                          Text('Headphones',
                                            style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(width: 35.0),
                                  GestureDetector(
                                    onTap: () {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)=>Tablet()
                                        ));},
                                    child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: AssetImage('assets/images/tabs.jpg'),
                                          ),
                                          Text('Tablet',
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                    ),
                                  ),
                                  SizedBox(width: 35.0),
                                  GestureDetector(
                                    onTap: () {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context)=>PB()
                                        ));},
                                    child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: AssetImage(
                                                'assets/images/powerbank.jpeg'),
                                          ),
                                          Text('PowerBank',
                                            style: TextStyle(
                                                fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                        ]
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ],
                      )
                  ),
                ]
            ),
          ]
      ),
    );
  }
}