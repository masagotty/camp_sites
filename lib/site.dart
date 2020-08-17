import 'package:flutter/material.dart';

class Site {
  Site({
    @required this.imageUrl,
    @required this.title,
    @required this.prefecture,
    @required this.description,
    @required this.likes,
    @required this.rate,
    this.isLiked = false,
  });

  final String imageUrl;
  final String title;
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
    imageUrl: "https://images.dog.ceo/breeds/collie-border/n02106166_26.jpg",
    title: "キャンプ場1",
    prefecture: "埼玉県",
    description:
        "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
    likes: 10,
    rate: 4.5,
  ),
  Site(
    imageUrl:
        "https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_198.jpg",
    title: "キャンプ場2",
    prefecture: "東京都",
    description:
        "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
    likes: 200,
    rate: 3.3,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/schipperke/n02104365_2981.jpg",
    title: "キャンプ場3",
    prefecture: "静岡県",
    description:
        "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
    likes: 0,
    rate: 0.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/hound-ibizan/n02091244_2760.jpg",
    title: "キャンプ場4",
    prefecture: "山梨県",
    description:
        "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
    likes: 40,
    rate: 4.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/bouvier/n02106382_117.jpg",
    title: "キャンプ場5",
    prefecture: "千葉県",
    description:
        "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
    likes: 8000,
    rate: 5.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/collie-border/n02106166_26.jpg",
    title: "キャンプ場1",
    prefecture: "埼玉県",
    description:
        "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
    likes: 10,
    rate: 4.5,
  ),
  Site(
    imageUrl:
        "https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_198.jpg",
    title: "キャンプ場2",
    prefecture: "東京都",
    description:
        "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
    likes: 200,
    rate: 3.3,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/schipperke/n02104365_2981.jpg",
    title: "キャンプ場3",
    prefecture: "静岡県",
    description:
        "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
    likes: 0,
    rate: 0.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/hound-ibizan/n02091244_2760.jpg",
    title: "キャンプ場4",
    prefecture: "山梨県",
    description:
        "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
    likes: 40,
    rate: 4.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/bouvier/n02106382_117.jpg",
    title: "キャンプ場5",
    prefecture: "千葉県",
    description:
        "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
    likes: 8000,
    rate: 5.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/collie-border/n02106166_26.jpg",
    title: "キャンプ場1",
    prefecture: "埼玉県",
    description:
        "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
    likes: 10,
    rate: 4.5,
  ),
  Site(
    imageUrl:
        "https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_198.jpg",
    title: "キャンプ場2",
    prefecture: "東京都",
    description:
        "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
    likes: 200,
    rate: 3.3,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/schipperke/n02104365_2981.jpg",
    title: "キャンプ場3",
    prefecture: "静岡県",
    description:
        "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
    likes: 0,
    rate: 0.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/hound-ibizan/n02091244_2760.jpg",
    title: "キャンプ場4",
    prefecture: "山梨県",
    description:
        "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
    likes: 40,
    rate: 4.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/bouvier/n02106382_117.jpg",
    title: "キャンプ場5",
    prefecture: "千葉県",
    description:
        "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
    likes: 8000,
    rate: 5.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/collie-border/n02106166_26.jpg",
    title: "キャンプ場1",
    prefecture: "埼玉県",
    description:
        "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
    likes: 10,
    rate: 4.5,
  ),
  Site(
    imageUrl:
        "https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_198.jpg",
    title: "キャンプ場2",
    prefecture: "東京都",
    description:
        "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
    likes: 200,
    rate: 3.3,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/schipperke/n02104365_2981.jpg",
    title: "キャンプ場3",
    prefecture: "静岡県",
    description:
        "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
    likes: 0,
    rate: 0.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/hound-ibizan/n02091244_2760.jpg",
    title: "キャンプ場4",
    prefecture: "山梨県",
    description:
        "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
    likes: 40,
    rate: 4.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/bouvier/n02106382_117.jpg",
    title: "キャンプ場5",
    prefecture: "千葉県",
    description:
        "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
    likes: 8000,
    rate: 5.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/collie-border/n02106166_26.jpg",
    title: "キャンプ場1",
    prefecture: "埼玉県",
    description:
        "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
    likes: 10,
    rate: 4.5,
  ),
  Site(
    imageUrl:
        "https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_198.jpg",
    title: "キャンプ場2",
    prefecture: "東京都",
    description:
        "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
    likes: 200,
    rate: 3.3,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/schipperke/n02104365_2981.jpg",
    title: "キャンプ場3",
    prefecture: "静岡県",
    description:
        "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
    likes: 0,
    rate: 0.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/hound-ibizan/n02091244_2760.jpg",
    title: "キャンプ場4",
    prefecture: "山梨県",
    description:
        "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
    likes: 40,
    rate: 4.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/bouvier/n02106382_117.jpg",
    title: "キャンプ場5",
    prefecture: "千葉県",
    description:
        "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
    likes: 8000,
    rate: 5.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/collie-border/n02106166_26.jpg",
    title: "キャンプ場1",
    prefecture: "埼玉県",
    description:
        "キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。キャンプ場1についての説明です。",
    likes: 10,
    rate: 4.5,
  ),
  Site(
    imageUrl:
        "https://images.dog.ceo/breeds/retriever-flatcoated/n02099267_198.jpg",
    title: "キャンプ場2",
    prefecture: "東京都",
    description:
        "キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。キャンプ場2についての説明です。",
    likes: 200,
    rate: 3.3,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/schipperke/n02104365_2981.jpg",
    title: "キャンプ場3",
    prefecture: "静岡県",
    description:
        "キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。キャンプ場3についての説明です。",
    likes: 0,
    rate: 0.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/hound-ibizan/n02091244_2760.jpg",
    title: "キャンプ場4",
    prefecture: "山梨県",
    description:
        "キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。キャンプ場4についての説明です。",
    likes: 40,
    rate: 4.0,
  ),
  Site(
    imageUrl: "https://images.dog.ceo/breeds/bouvier/n02106382_117.jpg",
    title: "キャンプ場5",
    prefecture: "千葉県",
    description:
        "キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。キャンプ場5についての説明です。",
    likes: 8000,
    rate: 5.0,
  ),
];
