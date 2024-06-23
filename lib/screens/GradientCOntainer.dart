import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class GradientBorderExample extends StatelessWidget {
  const GradientBorderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SizedBox(
        width: 172,
        height: 53,
        child: Stack(children: [
          Container(
            width: 171,
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
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


          // Container(
          //   width: 80.0,
          //   height: 80.0,
          //   decoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //     gradient: LinearGradient(
          //       colors: [Color(0xFF19A1BE), Color(0xFF7D4192)],
          //       begin: Alignment.topLeft,
          //       end: Alignment.bottomRight,
          //     ),
          //   ),
          //   child: Padding(
          //     padding: const EdgeInsets.all(2.0),
          //     child: Container(
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //       ),
          //       child: CircleAvatar(
          //         radius: 40.0,
          //         backgroundImage: AssetImage("assets/Images/profile.jpeg"),
          //       ),
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: GradientBorderExample(),
//   ));
// }
