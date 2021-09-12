import 'package:flutter/material.dart';
import 'screen_bichos.dart';
import 'screen_numeros.dart';
import 'screen_vogais.dart';
class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome>  with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Widget> _screens  =  [
    ScreenBichos(),
    ScreenNumeros(),
    ScreenVogais()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _screens.length, vsync: this);

  }
  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Aprenda Inglês",
        style: TextStyle(
          color: Colors.white,
          ),
        ),
        bottom: TabBar(
          indicatorWeight: 4,
         // indicatorColor: Colors.orange,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[300],
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "Bichos"
            ),
            Tab(
                text: "Números",
            ),
            Tab(
                text: "Vogais"
            ),
          ]
        ),
      ),
      body: Container(
        child: TabBarView(
          controller: _tabController,
          children: _screens,
        ),
      ),
    );
  }
}
