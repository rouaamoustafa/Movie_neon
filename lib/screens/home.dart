
import 'package:flutter/material.dart';
import 'package:movie_neon_mode/screens/CustomContainerGroup.dart';
import 'package:movie_neon_mode/screens/selectable_list.dart';

import 'CustomContainer.dart';
import 'Movie.dart';
import 'Movie_Group.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List<String>pagesName  =["For you ","Popular","TV Shows","News","Popular","Popular"];
    //Movie_Group
    final List<Movie> movies = [
    Movie(
      title: 'Grapper Baki',
      subtitle: 'T.1 Episode 4',
      image: 'assets/Images/film4.png',
      levelOfWatching: 0.7,
    ),
    Movie(
      title: 'Boku no Hero',
      subtitle: 'T.3 Episode 10',
      image: 'assets/Images/film3.png',
      levelOfWatching: 0.3,
    ),
    Movie(
      title: 'Hack',
      subtitle: 'T.1 Episode 4',
      image: 'assets/Images/img_2.png',
      levelOfWatching: 0.9,
    ),
  ];
    final List<Movie_Group> moviesGroup = [
      Movie_Group(
        title: 'Secret Wars',
        year: 2022,
        image: 'assets/Images/film2.jpeg',
      ),
      Movie_Group(
        title: 'Samaritan',
        year: 2022,
        image: 'assets/Images/film1.jpeg',
      ),
      Movie_Group(
        title: 'Secret Wars',
        year: 2022,
        image: 'assets/Images/film2.jpeg',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF18181B),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 67.0,
                        height: 67.0,
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
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF19A1BE).withOpacity(0.6),
                                  spreadRadius: 1,
                                  blurRadius: 50,
                                  offset: const Offset(-20, 0),
                                ),
                                BoxShadow(
                                  color: const Color(0xFF7D4192).withOpacity(0.6),
                                  spreadRadius: 1,
                                  blurRadius: 50,
                                  offset: const Offset(20, 0),
                                ),
                              ],
                            ),
                            child: const CircleAvatar(
                              radius: 40.0,
                              backgroundImage: AssetImage("assets/Images/profile.jpeg"),
                            ),
                          ),
                        )
                      ),
                      const SizedBox(width: 8),
                      const SizedBox(
                        width: 135,
                        height: 61,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back",
                              style:TextStyle(
                               fontSize: 16,
                               fontFamily: "Axiforma",
                               color: Colors.white
                                //color: Color(0xFF868686),
                            ),
                           ),
                            SizedBox(height: 4),
                            Text(
                              "Maria",
                              style:TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Axiforma",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                //color: Color(0xFF868686),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                   const Icon(
                        Icons.format_align_right,
                        color: Colors.grey,
                        size: 34,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "New release.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                        fontFamily: "Axiforma",
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 7),
                  Stack(
                    children: [
                      Container(
                        width: 380,
                        height: 183,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/Images/img_1.png"),
                              fit: BoxFit.cover, // Adjust this to fit your needs (BoxFit.cover, BoxFit.fill, etc.)
                            ),
                            borderRadius: BorderRadius.circular(24)
                        ),
        
                      ),
                      const Positioned(
                        bottom: 17,
                          left: 8,
                          child: SizedBox(
                            width: 110,
                            height: 51,
                            child: Column(
                              children: [
                                Text("Morbius",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Axiforma",
                                      fontSize: 24,
                                      color: Colors.white
                                  ),
                                ),
                                Text("Marvel Studios",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Axiforma",
                                      fontSize: 12,
                                      color: Color(0xFF848484)
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                      Positioned(
                          bottom: 4,
                          right: 8,
                          child: SizedBox(
                            width: 105,
                            height: 52,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: const Row(
                                    children: [
                                      Icon(Icons.star_outlined,color: Colors.yellow,size: 18),
                                      Icon(Icons.star_outlined,color: Colors.yellow,size: 18),
                                      Icon(Icons.star_outlined,color: Colors.yellow,size: 18),
                                      Icon(Icons.star_outlined,color: Colors.yellow,size: 18),
                                      Icon(Icons.star_outlined,color: Colors.yellow,size: 18),
                                    ],
                                  ),
                                ),
                                const Text("From 342 users",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Axiforma",
                                      fontSize: 10,
                                      color: Color(0xFF848484)
                                  ),
                                )
                              ],
                            ),
                          )
                      )
                  ],
                 ),
                  const SizedBox(height: 15),
                  const Text(
                    "Continue Watching.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Axiforma",
                        fontSize: 14,
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 7),
        
        
        
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height:180,
              width: 520,
              padding: const EdgeInsets.only(left: 15.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return CustomContainer(
                      title: movies[index].title,
                      subtitle: movies[index].subtitle,
                      image: movies[index].image,
                      levelOfWatching: movies[index].levelOfWatching,
                    );
                  }),
            ),
            const SizedBox(height: 8),
        
            const SelectableList(),
            const SizedBox(height: 8),
            Container(
              height:170,
              width: 520,
              padding: const EdgeInsets.only(left: 15.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context,index){
                    return CustomContainerGroup(
                      title: moviesGroup[index].title,
                      year: moviesGroup[index].year,
                      image: moviesGroup[index].image,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
