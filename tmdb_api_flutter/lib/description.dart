import 'package:flutter/material.dart';
import 'package:movie_app_flutter/utils/text.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;

  const Description({
    Key? key,
    required this.name,
    required this.description,
    required this.bannerurl,
    required this.posterurl,
    required this.vote,
    required this.launch_on,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  bannerurl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                child: ModifiedText(
                  text: '⭐ Average Rating - $vote',
                  size: 18,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ModifiedText(
              text: name,
              size: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ModifiedText(
              text: 'Releasing On - $launch_on',
              size: 14,
            ),
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ModifiedText(
                    text: description,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
