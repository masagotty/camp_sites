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
      padding: const EdgeInsets.all(16.0),
      child: Container(
        color: Colors.indigo[100],
        child: Text(site.name),
      ),
    );
  }
}
