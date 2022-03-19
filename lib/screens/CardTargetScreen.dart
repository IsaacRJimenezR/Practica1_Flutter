import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CardTarget extends StatefulWidget {
  //alt izq para cambiar todos los nombres en ek campo
  const CardTarget({Key? key}) : super(key: key);

  @override
  State<CardTarget> createState() => _CardTargetState();
}

class _CardTargetState extends State<CardTarget> {
  late TextEditingController _controller;
  bool _isChecked = false;

  var _maskCard = MaskTextInputFormatter(
    mask: '#### #### #### ####',
    filter: {"#": RegExp(r'[0-9]')},
  );

  var _Fecha = MaskTextInputFormatter(
    mask: '00/00/0000',
    filter: {"0": RegExp(r'[0-9]')},
  );

  var _cvv = MaskTextInputFormatter(
    mask: '***',
    filter: {"*": RegExp(r'[0-9]')},
  );

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromARGB(255, 192, 234, 238), //color de bacground
        body: Center(
      child: Form(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const SizedBox(height: 20.0),
            Container(
              child: Image.asset(
                'assets/img/targeta.png',
                width: 170.0,
              ),
            ),
            const SizedBox(height: 20.0),
            inputUsuario(_controller),
            const SizedBox(height: 10),
            inputCard(_maskCard),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              margin: const EdgeInsets.symmetric(horizontal: 0.0),
              height: 100.0,
              child: Row(children: [
                const SizedBox(height: 10),
                inputExpiracion(_Fecha),
                inputCvv(_cvv),
                //const SizedBox(height: 10),
              ]),
            ),
            /* Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: CheckboxListTile(
                  title: const Text('Validar'),
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  }),
            ),
            */
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () => {}, child: const Text('PAGAR'))
          ])),
    ));
  }
}

Widget inputUsuario(_controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
          border: InputBorder.none,
//icon: Icon(Icons.contact_mail),
          prefixIcon: Icon(Icons.account_circle),
          labelText: 'Nombre',
          hintText: 'user name'),
    ),
  );
}

Widget inputCard(_maskCard) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        //FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        //LengthLimitingTextInputFormatter(16)
        _maskCard
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Tarjeta',
          hintText: '1234-1234-1234-1234'),
    ),
  );
}

Widget inputExpiracion(_Fecha) {
  return Container(
    width: 135.0,
    padding: const EdgeInsets.symmetric(horizontal: 1.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        //FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        //LengthLimitingTextInputFormatter(16)
        _Fecha
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.date_range),
          labelText: 'Expiracion',
          hintText: '00/00/0000'),
    ),
  );
}

Widget inputCvv(_cvv) {
  return Container(
    width: 135.0,
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 30.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 2.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        //FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        //LengthLimitingTextInputFormatter(16)
        _cvv
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.security_rounded),
          labelText: 'CVV',
          hintText: '***'),
    ),
  );
}
