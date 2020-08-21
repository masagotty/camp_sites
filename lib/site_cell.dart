import 'package:flutter/material.dart';
import 'site.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class SiteCell extends StatelessWidget {
  final Site site;

  const SiteCell({
    Key key,
    @required this.site,
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
                site.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(
                Icons.favorite,
                size: 32,
                color: Colors.pink[400],
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  site.name,
                  style: TextStyle(color: Colors.white),
                ),
                SmoothStarRating(
                    allowHalfRating: true,
                    onRated: (v) {},
                    starCount: 5,
                    rating: site.rate,
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
