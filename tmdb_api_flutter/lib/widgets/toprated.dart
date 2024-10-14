import 'package:flutter/material.dart';
import 'package:movie_app_flutter/utils/text.dart';

class TopRatedMovies extends StatelessWidget {
  final List toprated;

  const TopRatedMovies({Key? key, required this.toprated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModifiedText(
            text: 'Top Rated Movies',
            size: 26,
          ),
          SizedBox(height: 10),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: toprated.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500' + toprated[index]['poster_path'],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      ModifiedText(
                        text: toprated[index]['title'] ?? 'Loading',
                        size: 15,
                      ),
                    ],
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
