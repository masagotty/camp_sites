import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SiteCell extends StatelessWidget {
  final bool isFavorite;
  final String siteName;
  final String siteImageUrl;
  final double siteRate;
  final Function toggleFavorite;
  // final String sitePrefecture;
  // final String siteDescription;
  // final int siteLikes;

  const SiteCell({
    Key key,
    @required this.isFavorite,
    @required this.siteName,
    @required this.siteImageUrl,
    @required this.siteRate,
    @required this.toggleFavorite,
    // @required this.sitePrefecture,
    // @required this.siteDescription,
    // @required this.siteLikes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                siteImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                size: 32,
                color: Colors.pink[400],
              ),
              onPressed: toggleFavorite,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  siteName,
                  style: TextStyle(color: Colors.white),
                ),
                SmoothStarRating(
                    allowHalfRating: true,
                    onRated: (v) {},
                    starCount: 5,
                    rating: siteRate,
                    size: 16.0,
                    isReadOnly: true,
                    color: Colors.yellow,
                    borderColor: Colors.yellow,
                    spacing: 0.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
