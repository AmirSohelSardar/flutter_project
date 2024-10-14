import 'package:flutter/material.dart';
import 'package:movie_app_flutter/utils/text.dart';

class TV extends StatelessWidget {
  final List tv;

  const TV({Key? key, required this.tv}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ModifiedText(
            text: 'Popular TV Shows',
            size: 26,
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tv.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5),
                  width: 250,
                  child: Column(
                    children: [
                      Container(
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500' + tv[index]['backdrop_path'],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      ModifiedText(
                        text: tv[index]['original_name'] ?? 'Loading',
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
