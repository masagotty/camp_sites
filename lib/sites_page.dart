import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:camp_sites/site_cell.dart';
import 'package:camp_sites/site_data.dart';

class SitesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SiteData siteData = Provider.of<SiteData>(context);
    return GridView.builder(
      itemCount: siteData.siteCount,
      // padding: EdgeInsets.all(8),
      itemBuilder: (context, index) {
        return SiteCell(
          site: siteData.getSites[index],
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisCount: 2,
        // crossAxisSpacing: 8,
        // mainAxisSpacing: 8,
      ),
    );
  }
}
