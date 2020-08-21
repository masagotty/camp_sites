import 'dart:collection';
import 'package:camp_sites/site.dart';
import 'package:flutter/foundation.dart';

class SiteData extends ChangeNotifier {
  List<Site> _sites = sites;

  UnmodifiableListView<Site> get getSites {
    return UnmodifiableListView(_sites);
  }

  int get siteCount {
    return _sites.length;
  }

  bool checkLiked(Site site) {
    return site.isLiked;
  }

  void likeSite(Site site) {
    site.toggleLiked();
    notifyListeners();
  }
}
