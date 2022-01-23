import 'package:fisioapp/pages/details.dart';
import 'package:fisioapp/pages/home.dart';
import 'package:fisioapp/theme/theme.dart';
import 'package:flutter/material.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);

  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  int currentPage = 0;
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentPage);
  }

  setCurrentPage(page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.homePageColorBg,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPage,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.comment),
                label: 'Home 2',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Home 3',
              ),
            ],
            onTap: (page) {
              controller.animateToPage(page,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.ease);
            }),
        body: PageView(
          controller: controller,
          children: const [
            HomePage(),
            DetailsPage(),
          ],
          onPageChanged: setCurrentPage,
        ));
  }
}
