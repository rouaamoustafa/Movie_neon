import 'package:flutter/material.dart';
import 'package:movie_neon_mode/screens/rotateClipper.dart';

import 'home.dart';

class MovieDetailPage extends StatelessWidget {
  final String title;
  final int year;
  final String image;

  const MovieDetailPage(
      {super.key, required this.title, required this.year, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18181B),
      body: Column(
        children: [
          SizedBox(
            width: 520,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 520,
                  color:  const Color(0xFF18181B),

                ),
                Positioned(
                  child: SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: Image.asset(
                      "assets/Images/img.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 175,
                  child: Container(
                    width: 460,
                    height: 150,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: <Color>[Colors.transparent, Color(0xFF18181B)],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 129,
                  child: Container(
                    width: 400,
                    color: const Color(0xFF18181B),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 136,
                          height: 70,
                          //alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Morbius",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Axiforma",
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                              Text(
                                "Marvel Studios",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Axiforma",
                                    fontSize: 12,
                                    color: Color(0xFF848484)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 52,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Row(
                                  children: [
                                    Icon(Icons.star_outlined,
                                        color: Colors.yellow, size: 18),
                                    Icon(Icons.star_outlined,
                                        color: Colors.yellow, size: 18),
                                    Icon(Icons.star_outlined,
                                        color: Colors.yellow, size: 18),
                                    Icon(Icons.star_outlined,
                                        color: Colors.yellow, size: 18),
                                    Icon(Icons.star_outlined,
                                        color: Colors.yellow, size: 18),
                                  ],
                                ),
                              ),
                              const Text(
                                "From 342 users",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Axiforma",
                                    fontSize: 10,
                                    color: Color(0xFF848484)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 385,
                    child: Container(
                      color: const Color(0xFF18181B),
                      width: 460,
                      height: 115,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: const Text(
                        " \nLorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor incididunt \n ut labore et dolore magna aliqua. Ut enim ad \n minim veniam, quis nostrud exercitation ullamco \n laboris nisi ut aliquip ex... ",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: "Axiforma",
                          fontWeight: FontWeight.w400,
                          color: Color(0XFF8F8F8F),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      height: 66,
                     //color: Colors.green,
                      child: Stack(
                       children: [
                        Positioned(
                          left:17,
                          top: 6,
                          child: Container(
                            width: 158,
                            height: 52,
                            decoration: BoxDecoration(
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(
                                  colors: [Color(0xFF5E5E5E), Color(0xFF18181B)],
                                  begin: Alignment.centerRight,
                                  end: Alignment.bottomRight,
                                ),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 55,top:10),
                             // alignment: Alignment,
                              child: const Column(
                                //mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Maria Espaes",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Axiforma",
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                      "As Morbius",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Axiforma",
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                            child: Container(
                            width: 62.0,
                            height: 62.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [Color(0xFF19A1BE), Color(0xFF7D4192)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: const CircleAvatar(
                                  radius: 40.0,
                                  backgroundImage: AssetImage("assets/Images/img_3.png"),
                                ),
                              ),
                            ),
                          ),
                        ),



                      ]),
                    ),
                    SizedBox(
                      width: 175,
                      height: 66,
                      //color: Colors.green,
                      child: Stack(
                          children: [
                            Positioned(
                              left:17,
                              top: 6,
                              child: Container(
                                width: 158,
                                height: 52,
                                decoration: BoxDecoration(
                                  border: const GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF5E5E5E), Color(0xFF18181B)],
                                      begin: Alignment.centerRight,
                                      end: Alignment.bottomRight,
                                    ),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(left: 55,top:10),
                                  // alignment: Alignment,
                                  child: const Column(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Maria Espaes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Axiforma",
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "As Morbius",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Axiforma",
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 2,
                              child: Container(
                                width: 62.0,
                                height: 62.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF19A1BE), Color(0xFF7D4192)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: const CircleAvatar(
                                      radius: 40.0,
                                      backgroundImage: AssetImage("assets/Images/img_4.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ),



                          ]),
                    ),

                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 175,
                      height: 66,
                      //color: Colors.green,
                      child: Stack(
                          children: [
                            Positioned(
                              left:17,
                              top: 6,
                              child: Container(
                                width: 158,
                                height: 52,
                                decoration: BoxDecoration(
                                  border: const GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF5E5E5E), Color(0xFF18181B)],
                                      begin: Alignment.centerRight,
                                      end: Alignment.bottomRight,
                                    ),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(left: 55,top:10),
                                  // alignment: Alignment,
                                  child: const Column(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Maria Espaes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Axiforma",
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "As Morbius",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Axiforma",
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 2,
                              child: Container(
                                width: 62.0,
                                height: 62.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF19A1BE), Color(0xFF7D4192)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: const CircleAvatar(
                                      radius: 40.0,
                                      backgroundImage: AssetImage("assets/Images/img_5.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ),



                          ]),
                    ),
                    SizedBox(
                      width: 175,
                      height: 66,
                      //color: Colors.green,
                      child: Stack(
                          children: [
                            Positioned(
                              left:17,
                              top: 6,
                              child: Container(
                                width: 158,
                                height: 52,
                                decoration: BoxDecoration(
                                  border: const GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF5E5E5E), Color(0xFF18181B)],
                                      begin: Alignment.centerRight,
                                      end: Alignment.bottomRight,
                                    ),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(left: 55,top:10),
                                  // alignment: Alignment,
                                  child: const Column(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Maria Espaes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Axiforma",
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "As Morbius",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Axiforma",
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 2,
                              child: Container(
                                width: 62.0,
                                height: 62.0,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [Color(0xFF19A1BE), Color(0xFF7D4192)],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: const CircleAvatar(
                                      radius: 40.0,
                                      backgroundImage: AssetImage("assets/Images/img_6.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ),



                          ]),
                    ),

                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height:30),
          const Spacer(),
          const GlowingContainer(
            buttonText: 'Watch now',
            destinationPage: MyHomePage(),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
