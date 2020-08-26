import 'package:camp_sites/Site.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:camp_sites/site_cell.dart';
import 'package:camp_sites/site_data.dart';

class LikePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SiteData>(builder: (context, siteData, child) {
      // List<Site>にしようとするとエラーになる
      // The argument type 'Site
      // (where Site is defined in /Users/Gotty/AndroidStudioProjects/MyApps/camp_sites/lib/site.dart)'
      // can't be assigned to the parameter type 'Site
      // (where Site is defined in /Users/Gotty/AndroidStudioProjects/MyApps/camp_sites/lib/Site.dart)'
      List likeSites = [];
      for (var site in siteData.getSites) {
        if (site.isLiked = true) {
          likeSites.add(site);
          print(likeSites);
        }
      }
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 2,
          // crossAxisSpacing: 8,
          // mainAxisSpacing: 8,
        ),
        itemCount: likeSites.length,
        // padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          final likeSite = likeSites[index];
          return SiteCell(
            siteName: likeSite.name,
            siteDescription: likeSite.description,
            siteImageUrl: likeSite.imageUrl,
            siteLikes: likeSite.likes,
            siteRate: likeSite.rate,
            sitePrefecture: likeSite.prefecture,
            isFavorite: likeSite.isLiked,
            toggleFavorite: () {
              siteData.likeSite(likeSite);
            },
          );
        },
      );
    });
  }
}
