import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("CALCULATOR",style: TextStyle(fontFamily:'Cocogoose' ))),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.bottomRight,

                ),
            ),
            Row(
              children: <Widget> [
                CustomButton('7'),
                CustomButton('8'),
                CustomButton('9'),
                CustomButton('+'),


              ],
            ),
            Row(
              children: <Widget> [
                CustomButton('4'),
                CustomButton('5'),
                CustomButton('6'),
                CustomButton('-'),


              ],
            ),
            Row(
              children: <Widget> [
                CustomButton('1'),
                CustomButton('2'),
                CustomButton('3'),
                CustomButton('*'),


              ],
            ),
            Row(
              children: <Widget> [
                CustomButton('C'),
                CustomButton('0'),
                CustomButton('/'),
                CustomButton('='),


              ],
            )

          ],
        ),
      )
      );




  }

  Widget CustomButton(String i) {
    return Expanded(
      child: OutlineButton(
                  padding: EdgeInsets.all(30.0),
                  onPressed: (){},
                  child: Text(
                    i,
                    style: TextStyle(fontSize: 30.0),
                  ),
                  ),
                );

  }
}
