import 'package:flutter/material.dart';

class SedeCard extends StatelessWidget {
  const SedeCard({
    super.key,
    required this.url,
    required this.sede,
  });

  final String url;
  final String sede;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(url),
          Text(
            sede,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
