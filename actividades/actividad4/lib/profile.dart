import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width, // added
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Image(image: AssetImage('assets/images/mclovin.jpeg')),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Cambiar Datos"))
        ],
      ), // Center
    );
  }
}
