import 'package:flutter/material.dart';
import 'site.dart';

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
                color: Colors.pink,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  site.name,
                  style: TextStyle(color: Colors.white),
                ),
                Text(site.name),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
