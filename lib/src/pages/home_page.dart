import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final estiloTexto = new TextStyle(fontSize: 32);

  int contador = 0;
  void paro(){
    setState(() => contador=0);
  }
  void regresar(){
    setState(() => contador--);
  }
  void adelantar(){
    setState(() => contador++);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Hola Mundo'), centerTitle: true),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de Clicks', style: estiloTexto),
            Text('$contador', style: estiloTexto),
          ],
        )),
        
        floatingActionButton:_botones()));
  }

Widget _botones(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(width:30),

      FloatingActionButton(
       child: Icon(Icons.exposure_zero), 
       onPressed: paro ),
      Expanded(child: SizedBox()),

      FloatingActionButton(
        child: Icon(Icons.remove), 
        onPressed: regresar),
         SizedBox(width:5.0),
         
         FloatingActionButton(
        child: Icon(Icons.add), 
        onPressed: adelantar),
    ]
  );
}
}
