import '../service/audio_cache_player.dart';
import 'package:flutter/material.dart';
class WidgetNumber extends StatelessWidget {
  String midia;
  String legenda;
  WidgetNumber(this.midia, this.legenda);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        AudioChachePlayer.tocar(midia);
      },
      child: Column(
        children: <Widget>[
          Image.asset("assets/imagens/$midia.png"),
          Text(legenda,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black87,
          ),
          ),
        ],
      ),
    );
  }
}
