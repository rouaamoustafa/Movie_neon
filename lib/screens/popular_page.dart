import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'GridMovie.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18181B),
      //appBar: AppBar(),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                     const Text(
                      "Search for a content",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Axiforma",
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: 342,
                      height: 56,
                      padding: const EdgeInsets.only(left: 10,top: 15),
                      decoration: BoxDecoration(
                          border: const GradientBoxBorder(
                            gradient: LinearGradient(colors: [Color(0xFF19A1BE), Color(0xFF7D4192)]),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF19A1BE).withOpacity(0.3), // Glow color
                            spreadRadius: 3, // More spread
                            blurRadius: 32, // More blur
                            offset: const Offset(-8, 0), // Adjust offset for more glow outside
                          ),
                          BoxShadow(
                            color: const Color(0xFF7D4192).withOpacity(0.3), // Glow color
                            spreadRadius: 3, // More spread
                            blurRadius: 32, // More blur
                            offset: const Offset(8, 0), // Adjust offset for more glow outside
                          ),
                          const BoxShadow(
                            color: Colors.black, // Black color inside
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child:  const Text(
                          "Search for a content.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xFF6C6C6C),
                            fontWeight: FontWeight.w400,
                            fontFamily: "Axiforma",
                            fontSize: 12,
                          ),
          
                        ),
          
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Categories",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Axiforma",
                        fontSize: 16,
                      ),
                    ),
                    //SizedBox(height:10),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      const SizedBox(
                        width: 180,
                        height: 173,
                        //color: Colors.white,
                      ),
                      Positioned(
                        top: 23,
                        left: 15,
                        bottom: 2,
                        child: ClipPath(
                        clipper: RoundedDiagonalPathClipper1(),
                        child: Container(
                          width: 166,
                          height: 155,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            gradient: LinearGradient(
                              colors: [Color(0xFF16CAF1), Color(0xFF0143A7)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
          
                          ),
          
          
                        ),
                      ),
                     ),
                      Positioned(
                          top: 35,
                          right: 12,
                          child:
                      Container(
                        child: const Column(
                          children: [
                            Text(
                                "Movies",
                               style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "532 Titles",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Axiforma",
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                       )
                      ),
                      Positioned(
                          top: -18,
                          left: -65,
                          //bottom: -1,
                          child:
                          SizedBox(
                              width: 260,
                              height: 220,
                              child: Image.asset("assets/Images/spiderman.png")
                          )
                      )
                    ],
                  ),
          
          
                  Stack(
                    children: [
                      const SizedBox(
                        width: 200,
                        height: 180,
                        //color: Colors.green,
                      ),
                      Positioned(
                        top: 28,
                        left: 10,
                        child:
                      ClipPath(
                        clipper: RoundedDiagonalPathClipper2(),
                        child: Container(
                          width: 170,
                          height: 148,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            gradient: LinearGradient(
                              colors: [Color(0xFFFF2E2E), Color(0xFFE08939)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
          
                        ),
                      ),
                      ),
                      Positioned(
                          top: 40,
                          left: 20,
                          child:
                          Container(
                            child: const Column(
                              children: [
                                Text(
                                  "Animes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Axiforma",
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "472 Titles",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Axiforma",
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      Positioned(
                       top: -5,
                       left: 70,
                       bottom: -1,
                         child:
                         SizedBox(
                             width: 165,
                             height: 140,
                             child: Image.asset("assets/Images/cartoon.png")
                         )
                     )
          
                    ],
                  ),
          
                ],
              ),
            const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 20, bottom: 0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Most searched",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: "Axiforma",
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const YourWidget(),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 2,vertical: 10),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //
              //       SizedBox(height: 9),
              //       Container(
              //         height: 170,
              //         width: 520,
              //         padding: const EdgeInsets.only(left: 15.0),
              //         child: ListView.builder(
              //           scrollDirection: Axis.horizontal,
              //           itemCount: movies_group2.length,
              //           itemBuilder: (context, index) {
              //             return GestureDetector(
              //               onTap: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                     builder: (context) => MovieDetailPage(
              //                       title: movies_group2[index].title,
              //                       year: movies_group2[index].year,
              //                       image: movies_group2[index].image,
              //                     ),
              //                   ),
              //                 );
              //               },
              //               child: CustomContainerGroup(
              //                 title: movies_group2[index].title,
              //                 year: movies_group2[index].year,
              //                 image: movies_group2[index].image,
              //               ),
              //             );
              //           },
              //         ),
              //       ),
              //       SizedBox(height: 3),
              //       Container(
              //         height:170,
              //         width: 520,
              //         padding: const EdgeInsets.only(left: 15.0),
              //         child: ListView.builder(
              //             scrollDirection: Axis.horizontal,
              //             itemCount: 3,
              //             itemBuilder: (context,index){
              //               return CustomContainerGroup(
              //                 title: movies_group[index].title,
              //                 year: movies_group[index].year,
              //                 image: movies_group[index].image,
              //               );
              //             }),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      )
    );
  }
}

class RoundedDiagonalPathClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0.0)
      ..quadraticBezierTo(size.width, 0.0, size.width - 30.0, 0.0)
      ..lineTo(20.0, 25.0)
      ..quadraticBezierTo(-10.0, 40.0, .0, 120.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
class RoundedDiagonalPathClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width, size.height)
      ..lineTo(0.0, size.height) // Mirror the lineTo coordinates
      ..lineTo(0.0, 0.0) // Mirror the lineTo coordinates
      ..quadraticBezierTo(20.0, 0.0, 30.0, 0.0) // Mirror the quadraticBezierTo coordinates
      ..lineTo(size.width - 20.0, 25.0) // Mirror the lineTo coordinates
      ..quadraticBezierTo(185.0, 40.0, size.width, 120.0); // Mirror the quadraticBezierTo coordinates
    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}