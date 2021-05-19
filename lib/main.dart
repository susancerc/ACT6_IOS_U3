import 'package:flutter/material.dart';

void main() => runApp(NavegacionApp());

class NavegacionApp extends StatefulWidget {
  @override
  _NavegacionAppState createState() => _NavegacionAppState();
} //Navegacion App

class _NavegacionAppState extends State<NavegacionApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, theme: ThemeData(brightness: Brightness.dark), home: Principal());
  }
} // Estado de la App

class Principal extends StatefulWidget {
  @override
  _PrincipalState createState() => _PrincipalState();
} //Clase Principal

class _PrincipalState extends State<Principal> with SingleTickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  } //Iniciar Estado con 5 Tabs

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
        )),
      ),
    );
  } //Tarjeta

  Tab tab(String text, Icon icon) {
    return Tab(
      icon: icon,
      text: text,
    );
  } //Texto e icono

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicacion de Susi"),
        centerTitle: true,
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0.0,
      ), // AppBar
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          card("Inicio\nBienvenid@ :)"),
          card("Citas"),
          card("Menu"),
          card("Cliente"),
          card("Ajustes"),
        ],
      ),
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: <Widget>[
          tab("Inicio", Icon(Icons.home_rounded)),
          tab("Citas", Icon(Icons.event)),
          tab("Menu", Icon(Icons.list)),
          tab("Cliente", Icon(Icons.account_circle_rounded)),
          tab("Ajustes", Icon(Icons.settings_rounded)),
        ],
      ),
    ); //Scaffold
  } //Constructor

} //Clase _PrincipalState
