import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "La page n'est pas encore disponible",
        style: TextStyle(color: Colors.deepOrange),
      ),
    );
  }
}
