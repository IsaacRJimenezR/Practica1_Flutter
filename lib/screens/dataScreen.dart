import 'package:flutter/material.dart';

//ES PARA LA TERCERA PANTALLA PANTALLA
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TERCERA PANTALLA DATOS'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Image.asset(
                'assets/img/LogoF.png',
                width: 170.0,
              ),
              Text(
                'ISAAC RUBÍN JIMÉNEZ RETANA',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 11, 11, 11),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10.0),
              Text(
                  'Tecnologías de la Información Área Desarrollo de Software Multiplataforma',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 2, 53, 255),
                    fontFamily: 'Raleway',
                  )),
              SizedBox(width: 10.0),
              ElevatedButton(
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              ),
            ]),
      ),
    );

    /*     body: Center(
        
          child: ElevatedButton(
        child: const Text('Regresar'),
        onPressed: () => Navigator.pop(context),
      )),
    );*/
  }
}
