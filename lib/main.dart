import 'package:flutter/material.dart';

void main() => runApp(CervApp());

class CervApp extends StatefulWidget {
  @override
  _CervAppState createState() => _CervAppState();
} //fin CervApp = cervantes app

class _CervAppState extends State<CervApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }// widget build
} // fin cerv app

class Ksita extends StatefulWidget {
  @override
  _KsitaState createState() => _KsitaState();
} // clase casita= ksita
class _KsitaState extends State<Ksita> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );// fin de controller
  } // fin del void
  Widget card(String text) {
    return Card(
      color: Colors.red[200],
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(
            child: Text(
          text,
          textAlign: TextAlign.center,
        )),// fin center y text
      ),// fin del container
    );// fin del card
  } // fin de widget
  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );// fin de tab
  } //fin del texto e icono
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicacion de Susi"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ), // fin de AppBar
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Inicio\nBienvenid@ :)"),
          card("Citas"),
          card("Menu"),
          card("Cliente"),
          card("Ajustes"),
        ],// fin <widget>
      ),// fin de body tap bar
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.home_rounded)),
          tab("Citas", Icon(Icons.event)),
          tab("Menu", Icon(Icons.list)),
          tab("Cliente", Icon(Icons.account_circle_rounded)),
          tab("Ajustes", Icon(Icons.settings_rounded)),
        ],// fin de <widget>
      ),// fin bottomnavigation
    ); //fin del scaffold
  } //fin de constructor
} // fin de mi ksita
