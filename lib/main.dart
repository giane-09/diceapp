import 'package:flutter/material.dart';

void main(){
  runApp(MyApp(),
  ); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), 
    );
  }
}

class HomePage extends StatelessWidget {
  int dadoIzquierdo =3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text("DiceApp"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          elevation: 10.0,
          ),
          body: Center(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print("dado izquiero");
                      dadoIzquierdo=2;
                      print(dadoIzquierdo);
                    },
                    child: Image.asset(
                      "assets/images/dice$dadoIzquierdo.png",
                    ),
                  ),
                  flex: 1,

                  ),
                  Expanded(
                  child: TextButton(
                    onPressed: () {
                      print("dado derecho");
                    },
                    child: Image.asset("assets/images/dice4.png",
                    ),
                  ),
                  flex: 1,

                  ),
              ],
            ),
          ),
        );
  }
}
