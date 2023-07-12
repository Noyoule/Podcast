import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 15, right: 20),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    hintText: 'Rechercher...',
                    filled: true,
                    fillColor: const Color(0x080C0E12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide.none, // Supprimer la bordure en ligne
                    ),
                  ),
                  autofocus: true,
                  style: const TextStyle(
                    color:
                        Color.fromARGB(255, 110, 110, 110), // Couleur du texte
                    fontFamily: 'Oswald',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
