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
            Stack(
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
                        flex: 2,
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
                    padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            // Text(
                            //   name,
                            //   style: TextStyle(
                            //     fontSize: 36.0,
                            //     foreground: Paint()
                            //       ..style = PaintingStyle.stroke
                            //       ..strokeWidth = 5
                            //       ..maskFilter =
                            //           MaskFilter.blur(BlurStyle.normal, 5.0)
                            //       ..color = Colors.grey[800],
                            //   ),
                            // ),
                            Text(
                              name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36.0,
                                fontWeight: FontWeight.bold,
                                // shadows: <Shadow>[
                                //   Shadow(
                                //     color: Colors.grey[700],
                                //     blurRadius: 20.0,
                                //   ),
                                // ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          prefecture,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SmoothStarRating(
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Text(description),
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
