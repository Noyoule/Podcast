import 'package:flutter/material.dart';
import 'package:podcast/components/BasicComponent.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:podcast/components/ComplexeComponent.dart';
import 'package:podcast/pages/SearchPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(padding: EdgeInsets.only(top: 50)),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Image(image: AssetImage('assets/images/woman.png')),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BasicComponent().basicText("Coucou, "),
                  BasicComponent().basicTextBold("Jhon DOE"),
                ],
              ),
              const Spacer(),
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: const Color(0x0D0C0E12),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SvgPicture.asset("assets/images/notification.svg"),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 20,
                    child: SvgPicture.asset("assets/images/Ellipse.svg"),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20),
            child: BasicComponent().basicBigTextBold("Vos music"),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              onTap: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const SearchPage()));
              },
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                hintText: 'Rechercher...',
                filled: true,
                fillColor: const Color(0x080C0E12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none, // Supprimer la bordure en ligne
                ),
              ),
              style: const TextStyle(
                color: Color.fromARGB(255, 110, 110, 110), // Couleur du texte
                fontFamily: 'Oswald',
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
            child: Row(
              children: [
                BasicComponent().basicMediumTextBold("Tendance"),
                const Spacer(),
                BasicComponent().basicInfoText("Voir plus"),
                const Icon(
                  Icons.navigate_next,
                  color: Colors.orange,
                )
              ],
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
            ),
            items: [
              ComplexeComponent().itemStack(context, "assets/images/wepik.png",
                  "SIA", "Unstoppable", "4min 22s"),
              ComplexeComponent().itemStack(context, "assets/images/wepik.png",
                  "GIMS", "Origami", "2min 4s"),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 7, bottom: 10, right: 10),
            child: Row(
              children: [
                BasicComponent().basicMediumTextBold("Catégorie"),
                const Spacer(),
                BasicComponent().basicInfoText("Voir plus"),
                const Icon(
                  Icons.navigate_next,
                  color: Colors.orange,
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                ComplexeComponent().card("assets/images/comedy.svg", "Comédie"),
                ComplexeComponent().card("assets/images/music.svg", "Music"),
                ComplexeComponent().card("assets/images/sports.svg", "Sports"),
                ComplexeComponent().card("assets/images/news.svg", "News")
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
            child: Row(
              children: [
                BasicComponent().basicRegularTextBold("Continuez à écouter"),
                const Spacer(),
                BasicComponent().basicInfoText("Voir plus"),
                const Icon(
                  Icons.navigate_next,
                  color: Colors.orange,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
