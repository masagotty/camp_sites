import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:camp_sites/site_cell.dart';
import 'package:camp_sites/site_data.dart';

class SitesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CampSites',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Consumer<SiteData>(builder: (context, siteData, child) {
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
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/user',
                  arguments: {
                    'name': site.name,
                    'URL': site.imageUrl,
                    'rate': site.rate,
                    'isFavorite': site.isLiked,
                    'toggleFavorite': () {
                      siteData.likeSite(site);
                    },
                    'prefecture': site.prefecture,
                    'likes': site.likes,
                    'description': site.description,
                  },
                );
              },
              child: SiteCell(
                siteName: site.name,
                siteImageUrl: site.imageUrl,
                siteRate: site.rate,
                isFavorite: site.isLiked,
                toggleFavorite: () {
                  siteData.likeSite(site);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
