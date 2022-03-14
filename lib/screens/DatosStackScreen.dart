import 'package:flutter/material.dart';

//ES PARA LA PANTALLA DE DATOS
class DatosstackPage extends StatelessWidget {
  const DatosstackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PÁGINA DATOS STACK'),
      ),
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              fit: StackFit.expand, //JUGAR CON ESTRAS PROPIEDADES PARA AJUSTAR
              clipBehavior: Clip
                  .antiAliasWithSaveLayer, //JUGAR CON ESTRAS PROPIEDADES PARA AJUSTAR
              // overflow: Overflow.visible, //NOS PERMITE SACAREL CUADRO NEGRO
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('assets/img/LogoF.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 130.0,
                  left: 21.0,
                  child: Container(
                    width: 255.0,
                    height: 280.0,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(20.0),
                    child: const Text(
                      'Isaac Rubin Jimenez Retana',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 80.0,
                  left: 20.0,
                  child: Container(
                    width: 250.0,
                    height: 250.0,

                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(40.0),
                    child: ElevatedButton(
                      child: const Text('Regresar'),
                      onPressed: () => Navigator.pop(context),
                    ),

                    //color: Colors.black,

                    // child: const Text(
                    //'DOS',
                    // style: TextStyle(color: Colors.white),
                    //),
                  ),
                ),

                //  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
