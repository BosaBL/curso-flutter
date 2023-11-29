import 'package:actividad2/card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _launchURL() async {
    launch("https://www.ulagos.cl/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sedes Universidad de Los Lagos")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SedeCard(
                url:
                    "https://www.ulagos.cl/wp-content/uploads/2020/12/Chinquihue-scaled.jpg",
                sede: "Campus Puerto Montt",
              ),
              const SedeCard(
                url:
                    "https://www.ulagos.cl/wp-content/uploads/2020/12/osorno-538x392.jpg",
                sede: "Campus Puerto Osorno",
              ),
              const SedeCard(
                url:
                    "https://www.ulagos.cl/wp-content/uploads/2020/12/chiloe-538x392.jpg",
                sede: "Campus Puerto Chiloé",
              ),
              ElevatedButton(
                  onPressed: _launchURL, child: const Text("Más Información"))
            ],
          ),
        ),
      ),
    );
  }
}
