import 'package:flutter/material.dart';
import 'package:movie_app_proj/data/movies.dart';

import 'detail_screen.dart';

class SeeMoreMovies extends StatelessWidget {
  final String title;
  const SeeMoreMovies({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: Colors.red),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: SizedBox(
              width: 1000,
              child: GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: constraints.maxWidth <= 600 ? 2 : 4,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.7
                    // childAspectRatio: 2/3
                    ),
                itemCount: allMovies.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    movie: allMovies[index],
                                  )));
                    },
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(allMovies[index].imageUrl),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6)),
                          padding: const EdgeInsets.all(6),
                          margin: const EdgeInsets.all(8),
                          child: Text(
                            allMovies[index].rating,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
