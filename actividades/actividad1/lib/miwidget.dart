import 'package:flutter/material.dart';

class MiWidget extends StatelessWidget {
  const MiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Mi Primera Chamba Móvil")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text(
                'Presiona este botón',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Creación de botón
              ElevatedButton(
                onPressed: () {
                  //  Creación de Snackbar
                  final snackBar = SnackBar(
                    content: const Text('¡Hola Mundo!'),
                    //  Cerrar snackbar al presionar "Cerrar"
                    action: SnackBarAction(
                      label: 'Cerrar',
                      onPressed: () {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      },
                    ),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                //  Estilando label del botón
                child: const Text(
                  '¡Hola Mundo!',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ])));
  }
}
