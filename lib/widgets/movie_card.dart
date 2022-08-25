import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String rating;
  final String imageUrl;
  const MovieCard({
    required this.rating,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 0.7,
          child: Container(
            // width: 150,
            // height: 200,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(6)),
          padding: const EdgeInsets.all(6),
          margin: const EdgeInsets.all(8),
          child: Text(
            rating,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
