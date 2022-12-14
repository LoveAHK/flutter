import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});

  final String title;

  @override
  State<SecondPage> createState() => _SecondPageState();
}




class _SecondPageState extends State<SecondPage> {
 String data ="Строка:";


  @override
  Widget build(BuildContext context) {
    String takedString = (ModalRoute.of(context)?.settings.arguments ?? "empty") as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$data$takedString',
              style: Theme.of(context).textTheme.headline4,
            ),

           


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        Navigator.pushNamed(context, '/');
        },
        child: const Text("Назад"),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
