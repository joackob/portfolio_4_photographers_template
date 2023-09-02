import 'package:flutter/material.dart';
import '../../theme/theme.dart';
import '../widgets/icon_button_search.dart';
import '../widgets/icon_text_button.dart';
import '../widgets/main_title_views.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    const title = MainTitleViews(
      title: 'Art Gallery',
    );

    final navBar = Container(
      margin: const EdgeInsets.symmetric(
        vertical: minVerticalSpacing,
        horizontal: minHorizontalSpacing,
      ),
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          IconButtonSearch(
            onPress: foo,
          ),
          IconTextButton(
            onPress: foo,
            label: 'PREMIUM',
            icon: const Icon(Icons.heart_broken),
          ),
          IconTextButton(
            onPress: foo,
            label: 'SHUFFLE',
            icon: const Icon(Icons.shuffle),
          ),
          IconTextButton(
            onPress: foo,
            label: 'FAVORITE',
            icon: const Icon(Icons.star),
          ),
        ],
      ),
    );

    var gallery1 = const SectionGalleryWidget();
    var gallery2 = const SectionGalleryWidget();

    final column = ListView(
      children: [title, navBar, gallery1, gallery2],
    );

    return column;
  }

  void foo() {
    1 + 1;
  }
}

class SectionGalleryWidget extends StatelessWidget {
  const SectionGalleryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final imgs = [
      Image.network(
        "https://picsum.photos/200/200/?random=1",
        height: 200,
        width: 200,
      ),
      Image.network(
        "https://picsum.photos/200/200/?random=2",
        height: 200,
        width: 200,
      ),
      Image.network(
        "https://picsum.photos/200/200/?random=3",
        height: 200,
        width: 200,
      ),
      Image.network(
        "https://picsum.photos/200/200/?random=4",
        height: 200,
        width: 200,
      ),
      Image.network(
        "https://picsum.photos/200/200/?random=5",
        height: 200,
        width: 200,
      ),
      Image.network(
        "https://picsum.photos/200/200/?random=6",
        height: 200,
        width: 200,
      ),
    ];
    final heightGridView = ((imgs.length + 1) / 2).floor() * 200;

    return Container(
      margin: const EdgeInsets.only(top: minVerticalSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: minHorizontalSpacing,
            ),
            child: const Text(
              'Section Title',
              style: TextStyle(
                color: negro,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: minVerticalSpacing,
              horizontal: minHorizontalSpacing,
            ),
            height: heightGridView.toDouble(),
            child: GridView.count(
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: imgs,
            ),
          ),
        ],
      ),
    );
  }
}
