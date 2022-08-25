import 'package:flutter/material.dart';
import 'package:movie_app_proj/data/movies.dart';
import 'package:movie_app_proj/detail_screen.dart';
import 'package:movie_app_proj/see_more_movies.dart';

import 'widgets/movie_card.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Center(
              child: SizedBox(
                width: 1000,
                child: Column(
                    crossAxisAlignment: constraints.maxWidth <= 600
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailScreen(movie: allMovies[0])));
                        },
                        child: Stack(
                          children: [
                            Stack(
                              children: [
                                Container(
                                    color: Colors.red,
                                    width: constraints.maxWidth <= 600
                                        ? double.infinity
                                        : 1000,
                                    height: constraints.maxWidth <= 600
                                        ? MediaQuery.of(context).size.height * 0.4
                                        : MediaQuery.of(context).size.height *
                                            0.6,
                                    child: Image.asset(
                                      allMovies[0].imageUrl,
                                      fit: BoxFit.cover,
                                    )),
                                Container(
                                  width: constraints.maxWidth <= 600
                                      ? double.infinity
                                      : 1000,
                                  height: constraints.maxWidth <= 600
                                      ? MediaQuery.of(context).size.height * 0.4
                                      : MediaQuery.of(context).size.height * 0.6,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      gradient: LinearGradient(
                                          begin: FractionalOffset.topCenter,
                                          end: FractionalOffset.bottomCenter,
                                          colors: [
                                            Colors.grey.withOpacity(0.0),
                                            Colors.black,
                                          ],
                                          stops: const [
                                            0.0,
                                            1.0
                                          ])),
                                )
                              ],
                            ),
                            Positioned(
                              bottom: 16,
                              left: 16,
                              right: 16,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    allMovies[0].title,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    allMovies[0].genres,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  ElevatedButton.icon(
                                    icon: const Icon(Icons.star),
                                    label: const Text('Rate'),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20)))),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => DetailScreen(
                                                  movie: allMovies[0])));
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Top Movies This Week',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SeeMoreMovies(
                                              title: 'Top Movies This Week',
                                            )));
                              },
                              style: TextButton.styleFrom(primary: Colors.red),
                              child: const Text('See All'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 16),
                          itemCount: 5,
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
                              child: MovieCard(
                                imageUrl: allMovies[index].imageUrl,
                                rating: allMovies[index].rating,
                              ),
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'New Releases',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const SeeMoreMovies(
                                              title: 'New Releases',
                                            )));
                              },
                              style: TextButton.styleFrom(primary: Colors.red),
                              child: const Text('See All'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 16),
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DetailScreen(
                                              movie: allMovies[index + 5],
                                            )));
                              },
                              child: MovieCard(
                                imageUrl: allMovies[index + 5].imageUrl,
                                rating: allMovies[index + 5].rating,
                              ),
                            );
                          },
                        ),
                      ),
                      const Center(
                          child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 24.0),
                        child: Text(
                          '@copyright Movie App 2022',
                          style: TextStyle(fontSize: 14),
                        ),
                      ))
                    ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
