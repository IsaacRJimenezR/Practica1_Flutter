import 'package:flutter/material.dart';

class TestStack extends StatelessWidget {
  const TestStack({Key? key}) : super(key: key);

//INICIO DE OPCION 1 DE ACOMODADO
/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PÁGINA STACK'),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 300.0,
                  color: Colors.red,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    'UNO',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 250.0,
                  color: Colors.black,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    'DOS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 200.0,
                  height: 200.0,
                  //color: Colors.purple,
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://ih1.redbubble.net/image.1558722819.4560/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg'),
                    ),
                  ),
                  child: const Text(
                    'TRES',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
*/
//FIN DE OPCION 1 DE ACOMODADO

//INICIO DE OPCION 2 DE ACOMODADO
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PÁGINA STACK'),
          backgroundColor: Colors.blue[200],
        ),
        body: Center(
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: Center(
              child: Stack(
                fit:
                    StackFit.expand, //JUGAR CON ESTRAS PROPIEDADES PARA AJUSTAR
                clipBehavior: Clip
                    .antiAliasWithSaveLayer, //JUGAR CON ESTRAS PROPIEDADES PARA AJUSTAR
                overflow: Overflow.visible, //NOS PERMITE SACAREL CUADRO NEGRO
                children: <Widget>[
                  Container(
                    width: 300.0,
                    height: 300.0,
                    color: Colors.red,
                  ),
                  Positioned(
                    top: 80.0,
                    left: 80.0,
                    child: Container(
                      width: 250.0,
                      height: 250.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget stackSinPos() {
    return Center(
      child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 300.0,
                  height: 300.0,
                  color: Colors.red,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    'UNO',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 250.0,
                  color: Colors.black,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(15.0),
                  child: const Text(
                    'DOS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 200.0,
                  height: 200.0,
                  //color: Colors.purple,
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://ih1.redbubble.net/image.1558722819.4560/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg'),
                    ),
                  ),
                  child: const Text(
                    'TRES',
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
