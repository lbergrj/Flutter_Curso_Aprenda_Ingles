import 'package:aprenda_ingles/widgets/widget_number.dart';
import 'package:flutter/material.dart';
class ScreenNumeros extends StatefulWidget {
  @override
  _ScreenNumerosState createState() => _ScreenNumerosState();
}

class _ScreenNumerosState extends State<ScreenNumeros> {
  @override
  Widget build(BuildContext context) {
     return GridView.count(
        padding: EdgeInsets.only(top:20),
        crossAxisCount: 2,
        //Altera o espaçamento entre os itens
        childAspectRatio:  MediaQuery.of(context).size.aspectRatio * 2.1,
        children: <Widget>[
          WidgetNumber("1","One"),
          WidgetNumber("2","Two"),
          WidgetNumber("3","Three"),
          WidgetNumber("4","Four"),
          WidgetNumber("5","Five"),
          WidgetNumber("6","Six"),
        ],
    );
  }
}
