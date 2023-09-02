import 'package:flutter/material.dart';
import '../views/gallery_view.dart';
import '../views/inspiration_view.dart';
import '../views/models_view.dart';
import '../views/settings_view.dart';
import '../views/stories_view.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  var indexSelectedNavBarItem = 0;

  @override
  Widget build(BuildContext context) {
    var views = [
      const GalleryView(),
      const InspirationView(),
      const StoriesView(),
      const ModelsView(),
      const SettingsView(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        indexButtonSelected: indexSelectedNavBarItem,
        onTap: handleTap,
      ),
      body: SafeArea(
        child: views[indexSelectedNavBarItem],
      ),
    );
  }

  void handleTap(int index) {
    setState(() {
      indexSelectedNavBarItem = index;
    });
  }
}
