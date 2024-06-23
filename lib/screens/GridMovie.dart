import 'package:flutter/material.dart';
import 'CustomContainerGroup.dart';
import 'MovieDetailPage.dart';
import 'Movie_Group.dart';


class YourWidget extends StatelessWidget {
  const YourWidget({super.key});

  @override
  Widget build(BuildContext context) {
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

    final List<Movie_Group> moviesGroup2 = [
      Movie_Group(
        title: 'Secret Wars',
        year: 2022,
        image: 'assets/Images/anim_2.png',
      ),
      Movie_Group(
        title: 'Secret Wars',
        year: 2022,
        image: 'assets/Images/img_1.png',
      ),
      Movie_Group(
        title: 'Samaritan',
        year: 2022,
        image: 'assets/Images/anim_1.jpeg',
      ),
    ];

    List<Movie_Group> allMovies = [...moviesGroup2, ...moviesGroup];

    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 12 ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //SizedBox(height: 9),
          SizedBox(
            height: 380,
            width: 520,
            //padding: const EdgeInsets.only(left: 15.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 7,
                childAspectRatio: 3/4,
              ),
              itemCount: allMovies.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailPage(
                          title: allMovies[index].title,
                          year: allMovies[index].year,
                          image: allMovies[index].image,
                        ),
                      ),
                    );
                  },
                  child: CustomContainerGroup(
                    title: allMovies[index].title,
                    year: allMovies[index].year,
                    image: allMovies[index].image,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
