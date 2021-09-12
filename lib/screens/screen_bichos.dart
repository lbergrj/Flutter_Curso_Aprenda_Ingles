import 'package:flutter/cupertino.dart';

import '../widgets/widget_animal.dart';
import 'package:flutter/material.dart';


class ScreenBichos extends StatefulWidget {
  @override
  _ScreenBichosState createState() => _ScreenBichosState();
}

class _ScreenBichosState extends State<ScreenBichos> {

  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          //Altera o espaçamento entre os itens
          childAspectRatio:  MediaQuery.of(context).size.aspectRatio * 2,
          children: <Widget>[
            WidgetAnimal("cao","Dog"),
            WidgetAnimal("gato","Cat"),
            WidgetAnimal("leao","Lion"),
            WidgetAnimal("macaco","Monkey"),
            WidgetAnimal("vaca","Cow"),
            WidgetAnimal("ovelha","Sheep"),
          ],
        )
    );
  }
}
