import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 0.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 0.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (value) {
        setState(() {
          _valorSlider = value;
        });
      },
    );
  }

  Widget _crearCheckbox() {
    return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://banner2.cleanpng.com/20180405/azq/kisspng-kitten-havana-brown-meow-clip-art-animated-cats-5ac6078fc3b627.0233253615229275038016.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}