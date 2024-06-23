import 'package:flutter_animate/flutter_animate.dart';
import 'package:movie_neon_mode/screens/rotateClipper.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF18181B),
      body:  Column(
          children: <Widget>[
            SizedBox(
              width: screenWidth,
              child: Column(
                children: [
                  const SizedBox(height: 100),
                  Stack(
                    children :[
                      const SizedBox(
                        width:double.infinity,
                        height: 450,
                      ),
                      Positioned(
                          child:
                          SizedBox(
                            width: 500,
                            height: 200,
                            child: ClipPath(
                              clipper: ClipParallelogram(
                                topLeftOffset: 75,
                                topRightOffset: 0,
                                bottomLeftOffset: -0,
                                bottomRightOffset: 75,),
                              child:Image.asset(
                                "assets/Images/img_1.png",
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      ),
                      Positioned(
                        top: 110,
                          child:
                          SizedBox(
                              width: 500,
                              height: 210,
                              child: ClipPath(
                                clipper: ClipParallelogram(
                                  topLeftOffset: 95,
                                  topRightOffset: 0,
                                  bottomLeftOffset: 0,
                                  bottomRightOffset: 95,
                                ),
                                child:Image.asset(
                                  "assets/Images/anim_2(1)(1).png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      ),
                      Positioned(
                        top: 230,
                        child:
                        SizedBox(
                          width: 500,
                          height: 205,
                          child: ClipPath(
                            clipper: ClipParallelogram(
                              topLeftOffset: 95,
                              topRightOffset: 0,
                              bottomLeftOffset: 0,
                              bottomRightOffset: 95,
                            ),
                            child:Image.asset(
                              "assets/Images/anim_1.jpeg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ]
                  ),
                ],
              ),
            ),
            const SizedBox(height: 9),



             Center(
              child: Column(
                children: [
                  SizedBox(
                    width: 218,
                    height: 180,
                    child: Column(
                      children: [
                        Text(
                          "Onboarding",
                        style: TextStyle(
                          fontSize: 33,
                            fontFamily: "Axiforma",
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                         ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Text("Watch everything you want for free!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Axiforma",
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        GlowingContainer(
                          buttonText: 'Enter now',
                          destinationPage: MyHomePage(),
                        )
                      ],
                    ).animate().fade(duration:Duration(seconds: 2)).flip(duration: Duration(seconds: 2)),
                  ),
                ],
              ),
            )
          ],
        ),

    );
  }
}
class ClipParallelogram extends CustomClipper<Path> {
  final double topLeftOffset;
  final double topRightOffset;
  final double bottomLeftOffset;
  final double bottomRightOffset;

  ClipParallelogram({
    required this.topLeftOffset,
    required this.topRightOffset,
    required this.bottomLeftOffset,
    required this.bottomRightOffset,
  });

  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path()
      ..moveTo(0, topLeftOffset)
      ..lineTo(width, topRightOffset)
      ..lineTo(width, height - bottomRightOffset)
      ..lineTo(0, height - bottomLeftOffset)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}



