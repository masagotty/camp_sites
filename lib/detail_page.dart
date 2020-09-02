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

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
                Column(
                  children: <Widget>[
                    Text(name),
                    Text(prefecture),
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
