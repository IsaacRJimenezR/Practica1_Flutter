import 'package:flutter/material.dart';

//ES PARA LA SEGUNDA PANTALLA
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEGUNDA PANTALLA'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Regresar'),
        onPressed: () => Navigator.pop(context),
      )),
    );
  }
}
