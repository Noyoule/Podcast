import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
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
