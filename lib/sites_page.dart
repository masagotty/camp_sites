import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:camp_sites/site_cell.dart';
import 'package:camp_sites/site_data.dart';

class SitesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SiteData>(builder: (context, siteData, child) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 2,
          // crossAxisSpacing: 8,
          // mainAxisSpacing: 8,
        ),
        itemCount: siteData.siteCount,
        // padding: EdgeInsets.all(8),
        itemBuilder: (context, index) {
          final site = siteData.getSites[index];
          return SiteCell(
            siteName: site.name,
            siteDescription: site.description,
            siteImageUrl: site.imageUrl,
            siteLikes: site.likes,
            siteRate: site.rate,
            sitePrefecture: site.prefecture,
            isFavorite: site.isLiked,
            toggleFavorite: () {
              siteData.likeSite(site);
            },
          );
        },
      );
    });
  }
}
