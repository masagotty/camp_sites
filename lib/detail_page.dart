import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map arg = ModalRoute.of(context).settings.arguments;
    final String name = arg['name'];
    final String url = arg['URL'];
    final double rate = arg['rate'];
    // final bool isFavorite = arg['isFavorite'];
    // final Function toggleFavorite = arg['toggleFavorite'];
    final String description = arg['description'];
    final String prefecture = arg['prefecture'];

    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Hero(
              tag: name,
              child: Material(
                child: Stack(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1.0,
                      child: Image.network(
                        url,
                        fit: BoxFit.cover,
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 1.0,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(16, 0, 0, 0),
                                      Color.fromARGB(216, 32, 32, 32),
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    AspectRatio(
                      aspectRatio: 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 12,
                              child: Container(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  width: double.infinity,
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      name,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 36.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Material(
                                  color: Colors.transparent,
                                  child: Text(
                                    prefecture,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: SmoothStarRating(
                                  allowHalfRating: true,
                                  onRated: (v) {},
                                  starCount: 5,
                                  rating: rate,
                                  size: 16.0,
                                  isReadOnly: true,
                                  color: Colors.yellow,
                                  borderColor: Colors.yellow,
                                  spacing: 0.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 'name': likeSite.name,
// 'URL': likeSite.imageUrl,
// 'rate': likeSite.rate,
// 'isFavorite': likeSite.isLiked,
// 'toggleFavorite': () {
//   siteData.likeSite(likeSite);
// },
// 'prefecture': likeSite.prefecture,
// 'likes': likeSite.likes,
// 'description': likeSite.description,
