import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:podcast/pages/DownloadPage.dart';
import 'package:podcast/pages/ExplorePage.dart';
import 'package:podcast/pages/ProfilePage.dart';
import 'package:podcast/pages/homePage.dart';

class MainPagesManager extends StatefulWidget {
  const MainPagesManager({super.key});

  @override
  State<MainPagesManager> createState() => _MainPagesManagerState();
}

class _MainPagesManagerState extends State<MainPagesManager> {
  int _current_index = 0;

  void setCurrentIndex(int index) {
    setState(() {
      _current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        focusColor: Colors.deepOrange,
        textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
      ),
      home: Scaffold(
        body: const [
          HomePage(),
          ExplorePage(),
          DownloadPage(),
          ProfilePage(),
        ][_current_index],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 16,
          currentIndex: _current_index,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home.svg",
                color: [
                  Colors.deepOrange,
                  Colors.black87,
                  Colors.black87,
                  Colors.black87,
                ][_current_index],
              ),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/download.svg",
                color: [
                  Colors.black87,
                  Colors.deepOrange,
                  Colors.black87,
                  Colors.black87,
                ][_current_index],
              ),
              label: "Explorer",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/download.svg",
                color: [
                  Colors.black87,
                  Colors.black87,
                  Colors.deepOrange,
                  Colors.black87,
                ][_current_index],
              ),
              label: "Télécharger",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/user.svg",
                color: [
                  Colors.black87,
                  Colors.black87,
                  Colors.black87,
                  Colors.deepOrange,
                ][_current_index],
              ),
              label: "Profil",
            ),
          ],
        ),
      ),
    );
  }
}
