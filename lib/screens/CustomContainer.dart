import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final double levelOfWatching;

  const CustomContainer({super.key, 
    required this.title,
    required this.subtitle,
    required this.image,
    required this.levelOfWatching,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 190,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 180,
                height: 120,

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
              Positioned(
                bottom: 0,
                left: 15,
                right: 20,
                child: SizedBox(
                  height: 3, // Explicitly set the height of the progress indicator
                  child: LinearProgressIndicator(
                    value: levelOfWatching,
                    backgroundColor: Colors.transparent,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: "Axiforma",
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              subtitle,
              style: const TextStyle(
                color: Color(0xFF868686),
                fontFamily: "Axiforma",
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),


        ],
      ),
    );
  }
}
