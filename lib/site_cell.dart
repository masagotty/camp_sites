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
      child: Hero(
        tag: siteName,
        child: Scaffold(
          body: Stack(
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
              AspectRatio(
                aspectRatio: 1.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
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
                    Expanded(
                      flex: 6,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Material(
                        color: Colors.transparent,
                        child: Text(
                          siteName,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: SmoothStarRating(
                          allowHalfRating: true,
                          onRated: (v) {},
                          starCount: 5,
                          rating: siteRate,
                          size: 16.0,
                          isReadOnly: true,
                          color: Colors.yellow,
                          borderColor: Colors.yellow,
                          spacing: 0.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
