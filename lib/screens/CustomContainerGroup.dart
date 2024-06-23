import 'package:flutter/material.dart';

class CustomContainerGroup extends StatelessWidget {
  final String title;
  final int year;
  final String image;


  const CustomContainerGroup({super.key, 
    required this.title,
    required this.year,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 124,
            height: 110,
            //margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: Column(
              children: [
                Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: "Axiforma",
                    ),
                  ),

                const SizedBox(height: 4),
                Text(
                  "$year",
                  style: const TextStyle(
                    color: Color(0xFF868686),
                    fontFamily: "Axiforma",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
