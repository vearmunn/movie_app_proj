class Movie {
  final String title;
  final String rating;
  final String genres;
  final String desc;
  final int yearRelease;
  final int age;
  final String country;
  final String imageUrl;

  Movie(
      {required this.title,
      required this.rating,
      required this.genres,
      required this.desc,
      required this.yearRelease,
      required this.age,
      required this.country,
      required this.imageUrl});
}

class Comment {
  final String name;
  final String imageUrl;
  final int daysAgo;

  Comment(this.name, this.imageUrl, this.daysAgo);
}

List<Movie> allMovies = [
  Movie(
      title: 'Dr.Strange : Multiverse of Madness',
      rating: '8.2',
      genres: 'Action, Superhero, Science Fiction',
      age: 13,
      desc:
          'What Is Doctor Strange 2 About? Marvel\'s latest MCU installment follows the journey of Doctor Steven Strange as he traverses the multiverse protecting his newest powered compatriot, America Chavez, from Wanda Maximoff (Elizabeth Olsen).',
      country: 'USA',
      yearRelease: 2022,
      imageUrl: 'assets/images/drstrange.jpg'),
  Movie(
      title: 'Iron Man',
      rating: '7.9',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Jon Favreau. With Robert Downey Jr., Gwyneth Paltrow, Terrence Howard, Jeff Bridges. After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.',
      country: 'USA',
      yearRelease: 2008,
      imageUrl: 'assets/images/ironman.jpg'),
  Movie(
      title: 'Captain America: Civil War',
      rating: '7.8',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Anthony Russo, Joe Russo. With Chris Evans, Robert Downey Jr., Scarlett Johansson, Sebastian Stan. Political involvement in the Avengers\' affairs causes a rift between Captain America and Iron Man.',
      country: 'USA',
      yearRelease: 2016,
      imageUrl: 'assets/images/civilwar.jpg'),
  Movie(
      title: 'Avengers: Endgame',
      rating: '8.8',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Anthony Russo, Joe Russo. With Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth. After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos\' actions and restore order to the universe.',
      country: 'USA',
      yearRelease: 2019,
      imageUrl: 'assets/images/endgame.jpg'),
  Movie(
      title: 'Avengers: Infinity War',
      rating: '8.5',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Anthony Russo, Joe Russo. With Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans. The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.',
      country: 'USA',
      yearRelease: 2018,
      imageUrl: 'assets/images/infinitywar.jpg'),
  Movie(
      title: 'Spiderman No Way Home',
      rating: '8.7',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Spider-Man seeks the help of Doctor Strange to forget his exposed secret identity as Peter Parker. However, Strange\'s spell goes horribly wrong, leading to unwanted guests entering their universe.',
      country: 'USA',
      yearRelease: 2021,
      imageUrl: 'assets/images/spiderman.jpg'),
  Movie(
      title: 'Avengers: Endgame',
      rating: '8.8',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Anthony Russo, Joe Russo. With Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth. After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos\' actions and restore order to the universe.',
      country: 'USA',
      yearRelease: 2019,
      imageUrl: 'assets/images/endgame.jpg'),
  Movie(
      title: 'Avengers: Infinity War',
      rating: '8.5',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Anthony Russo, Joe Russo. With Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans. The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.',
      country: 'USA',
      yearRelease: 2018,
      imageUrl: 'assets/images/infinitywar.jpg'),
  Movie(
      title: 'Iron Man',
      rating: '7.9',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Jon Favreau. With Robert Downey Jr., Gwyneth Paltrow, Terrence Howard, Jeff Bridges. After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.',
      country: 'USA',
      yearRelease: 2008,
      imageUrl: 'assets/images/ironman.jpg'),
  Movie(
      title: 'Captain America: Civil War',
      rating: '7.8',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Anthony Russo, Joe Russo. With Chris Evans, Robert Downey Jr., Scarlett Johansson, Sebastian Stan. Political involvement in the Avengers\' affairs causes a rift between Captain America and Iron Man.',
      country: 'USA',
      yearRelease: 2016,
      imageUrl: 'assets/images/civilwar.jpg'),
  Movie(
      title: 'Avengers: Endgame',
      rating: '8.8',
      genres: 'Action, Adventure, Sci-Fi',
      age: 13,
      desc:
          'Directed by Anthony Russo, Joe Russo. With Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth. After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to undo Thanos\' actions and restore order to the universe.',
      country: 'USA',
      yearRelease: 2019,
      imageUrl: 'assets/images/endgame.jpg'),
];

List<Comment> comments = [
  Comment('Kristin Watson', 'assets/images/profilepict1.jpg', 3),
  Comment('John Draken', 'assets/images/profilepict2.jpg', 7),
  Comment('Alexandro Martinez', 'assets/images/profilepict3.jpg', 12),
];
