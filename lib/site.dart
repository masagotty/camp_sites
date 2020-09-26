import 'package:flutter/material.dart';

class Site {
  Site({
    @required this.imageUrl,
    @required this.name,
    @required this.prefecture,
    @required this.description,
    @required this.likes,
    @required this.rate,
    this.isLiked = false,
  });

  final String imageUrl;
  final String name;
  final String prefecture;
  final String description;
  final int likes;
  final double rate;
  bool isLiked;

  void toggleLiked() {
    isLiked = !isLiked;
  }
}

final sites = [
  Site(
    imageUrl:
        "https://s3-ap-northeast-1.amazonaws.com/cdn.travel-star.jp/production/posts/eyecatches/000/013/661/eyecatch.jpg?1551482531",
    name: "キャンプ場1",
    prefecture: "埼玉県",
    description:
        "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
    likes: 10,
    rate: 4.5,
  ),
  Site(
    imageUrl: "https://www.odakyu-voice.jp/trip/2018_07_feature/img/main.jpg",
    name: "キャンプ場2",
    prefecture: "東京都",
    description:
        "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
    likes: 200,
    rate: 3.3,
  ),
  Site(
    imageUrl:
        "https://www.vill.samegawa.fukushima.jp/data/img/1547013049_1.jpg",
    name: "キャンプ場3",
    prefecture: "静岡県",
    description:
        "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
    likes: 0,
    rate: 0.0,
  ),
  Site(
    imageUrl: "https://takibi.style/wp-content/uploads/2019/04/hyogo_camp1.jpg",
    name: "キャンプ場4",
    prefecture: "山梨県",
    description:
        "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
    likes: 40,
    rate: 4.0,
  ),
  Site(
    imageUrl:
        "https://saikohan.com/wp-content/themes/kohan-camp/images/top/main003.jpg",
    name: "キャンプ場5",
    prefecture: "千葉県",
    description:
        "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
    likes: 8000,
    rate: 5.0,
  ),
  // Site(
  //   imageUrl:
  //       "https://s3-ap-northeast-1.amazonaws.com/cdn.travel-star.jp/production/posts/eyecatches/000/013/661/eyecatch.jpg?1551482531",
  //   name: "キャンプ場1",
  //   prefecture: "埼玉県",
  //   description:
  //       "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
  //   likes: 10,
  //   rate: 4.5,
  // ),
  // Site(
  //   imageUrl: "https://www.odakyu-voice.jp/trip/2018_07_feature/img/main.jpg",
  //   name: "キャンプ場2",
  //   prefecture: "東京都",
  //   description:
  //       "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
  //   likes: 200,
  //   rate: 3.3,
  // ),
  // Site(
  //   imageUrl:
  //       "https://www.vill.samegawa.fukushima.jp/data/img/1547013049_1.jpg",
  //   name: "キャンプ場3",
  //   prefecture: "静岡県",
  //   description:
  //       "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
  //   likes: 0,
  //   rate: 0.0,
  // ),
  // Site(
  //   imageUrl: "https://takibi.style/wp-content/uploads/2019/04/hyogo_camp1.jpg",
  //   name: "キャンプ場4",
  //   prefecture: "山梨県",
  //   description:
  //       "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
  //   likes: 40,
  //   rate: 4.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://saikohan.com/wp-content/themes/kohan-camp/images/top/main003.jpg",
  //   name: "キャンプ場5",
  //   prefecture: "千葉県",
  //   description:
  //       "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
  //   likes: 8000,
  //   rate: 5.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://s3-ap-northeast-1.amazonaws.com/cdn.travel-star.jp/production/posts/eyecatches/000/013/661/eyecatch.jpg?1551482531",
  //   name: "キャンプ場1",
  //   prefecture: "埼玉県",
  //   description:
  //       "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
  //   likes: 10,
  //   rate: 4.5,
  // ),
  // Site(
  //   imageUrl: "https://www.odakyu-voice.jp/trip/2018_07_feature/img/main.jpg",
  //   name: "キャンプ場2",
  //   prefecture: "東京都",
  //   description:
  //       "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
  //   likes: 200,
  //   rate: 3.3,
  // ),
  // Site(
  //   imageUrl:
  //       "https://www.vill.samegawa.fukushima.jp/data/img/1547013049_1.jpg",
  //   name: "キャンプ場3",
  //   prefecture: "静岡県",
  //   description:
  //       "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
  //   likes: 0,
  //   rate: 0.0,
  // ),
  // Site(
  //   imageUrl: "https://takibi.style/wp-content/uploads/2019/04/hyogo_camp1.jpg",
  //   name: "キャンプ場4",
  //   prefecture: "山梨県",
  //   description:
  //       "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
  //   likes: 40,
  //   rate: 4.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://saikohan.com/wp-content/themes/kohan-camp/images/top/main003.jpg",
  //   name: "キャンプ場5",
  //   prefecture: "千葉県",
  //   description:
  //       "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
  //   likes: 8000,
  //   rate: 5.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://s3-ap-northeast-1.amazonaws.com/cdn.travel-star.jp/production/posts/eyecatches/000/013/661/eyecatch.jpg?1551482531",
  //   name: "キャンプ場1",
  //   prefecture: "埼玉県",
  //   description:
  //       "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
  //   likes: 10,
  //   rate: 4.5,
  // ),
  // Site(
  //   imageUrl: "https://www.odakyu-voice.jp/trip/2018_07_feature/img/main.jpg",
  //   name: "キャンプ場2",
  //   prefecture: "東京都",
  //   description:
  //       "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
  //   likes: 200,
  //   rate: 3.3,
  // ),
  // Site(
  //   imageUrl:
  //       "https://www.vill.samegawa.fukushima.jp/data/img/1547013049_1.jpg",
  //   name: "キャンプ場3",
  //   prefecture: "静岡県",
  //   description:
  //       "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
  //   likes: 0,
  //   rate: 0.0,
  // ),
  // Site(
  //   imageUrl: "https://takibi.style/wp-content/uploads/2019/04/hyogo_camp1.jpg",
  //   name: "キャンプ場4",
  //   prefecture: "山梨県",
  //   description:
  //       "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
  //   likes: 40,
  //   rate: 4.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://saikohan.com/wp-content/themes/kohan-camp/images/top/main003.jpg",
  //   name: "キャンプ場5",
  //   prefecture: "千葉県",
  //   description:
  //       "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
  //   likes: 8000,
  //   rate: 5.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://s3-ap-northeast-1.amazonaws.com/cdn.travel-star.jp/production/posts/eyecatches/000/013/661/eyecatch.jpg?1551482531",
  //   name: "キャンプ場1",
  //   prefecture: "埼玉県",
  //   description:
  //       "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
  //   likes: 10,
  //   rate: 4.5,
  // ),
  // Site(
  //   imageUrl: "https://www.odakyu-voice.jp/trip/2018_07_feature/img/main.jpg",
  //   name: "キャンプ場2",
  //   prefecture: "東京都",
  //   description:
  //       "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
  //   likes: 200,
  //   rate: 3.3,
  // ),
  // Site(
  //   imageUrl:
  //       "https://www.vill.samegawa.fukushima.jp/data/img/1547013049_1.jpg",
  //   name: "キャンプ場3",
  //   prefecture: "静岡県",
  //   description:
  //       "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
  //   likes: 0,
  //   rate: 0.0,
  // ),
  // Site(
  //   imageUrl: "https://takibi.style/wp-content/uploads/2019/04/hyogo_camp1.jpg",
  //   name: "キャンプ場4",
  //   prefecture: "山梨県",
  //   description:
  //       "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
  //   likes: 40,
  //   rate: 4.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://saikohan.com/wp-content/themes/kohan-camp/images/top/main003.jpg",
  //   name: "キャンプ場5",
  //   prefecture: "千葉県",
  //   description:
  //       "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
  //   likes: 8000,
  //   rate: 5.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://s3-ap-northeast-1.amazonaws.com/cdn.travel-star.jp/production/posts/eyecatches/000/013/661/eyecatch.jpg?1551482531",
  //   name: "キャンプ場1",
  //   prefecture: "埼玉県",
  //   description:
  //       "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
  //   likes: 10,
  //   rate: 4.5,
  // ),
  // Site(
  //   imageUrl: "https://www.odakyu-voice.jp/trip/2018_07_feature/img/main.jpg",
  //   name: "キャンプ場2",
  //   prefecture: "東京都",
  //   description:
  //       "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
  //   likes: 200,
  //   rate: 3.3,
  // ),
  // Site(
  //   imageUrl:
  //       "https://www.vill.samegawa.fukushima.jp/data/img/1547013049_1.jpg",
  //   name: "キャンプ場3",
  //   prefecture: "静岡県",
  //   description:
  //       "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
  //   likes: 0,
  //   rate: 0.0,
  // ),
  // Site(
  //   imageUrl: "https://takibi.style/wp-content/uploads/2019/04/hyogo_camp1.jpg",
  //   name: "キャンプ場4",
  //   prefecture: "山梨県",
  //   description:
  //       "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
  //   likes: 40,
  //   rate: 4.0,
  // ),
  // Site(
  //   imageUrl:
  //       "https://saikohan.com/wp-content/themes/kohan-camp/images/top/main003.jpg",
  //   name: "キャンプ場5",
  //   prefecture: "千葉県",
  //   description:
  //       "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
  //   likes: 8000,
  //   rate: 5.0,
  // ),
];
