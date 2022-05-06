import 'dart:developer';
// test comment
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen>{
  var ans = "";
  var click = " ";
  var sign = " ";
  var c = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("calculater") ,
        backgroundColor: Colors.teal[200],
      ),
      backgroundColor: Colors.white38,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.centerRight,
                  child: Text(
                    click + sign,
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerRight,
                  child: Text(
                    ans,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )

              ],
            ),
          )),
          Expanded( flex: 3 ,
              child: Container(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.fromLTRB(1, 20, 1, 10),
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 4,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            clear();
                          },
                          child: Text("AC", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            back();
                          },
                          child: Text("<=", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("%");
                          },
                          child: Text("%", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("/");
                          },
                          child: Text("/", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("1");
                          },
                          child: Text("1", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {update("2");},
                          child: Text("2", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("3");
                          },
                          child: Text("3", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("+");
                          },
                          child: Text("+", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("4");
                          },
                          child: Text("4", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("5");
                          },
                          child: Text("5", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("6");
                          },
                          child: Text("6", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("-");
                          },
                          child: Text("-", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("7");
                          },
                          child: Text("7", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("8");
                          },
                          child: Text("8", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("9");
                          },
                          child: Text("9", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("*");
                          },
                          child: Text("*", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update(00);
                          },
                          child: Text("00", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update("0");
                          },
                          child: Text("0", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),


                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            update(".");
                          },
                          child: Text(".", style: TextStyle(fontSize: 40),)),
                      color: Colors.teal[200],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {
                            answer();
                          },
                          child: Text("=", style: TextStyle(fontSize: 40),)),
                      color: Colors.pink[200],
                    ),


                  ],
                ),
              )
          )

        ],
      ),
    );
  }
  void update(var i){
    setState(() {

      c = click.split("");
      var lastvalue = c[c.length-1];
      if(['+', '-', '*', '/', '%'].contains(lastvalue)){
        if(['+', '-', '*', '/', '%'].contains(i)){
          return;
        }
      }
      click += i;

    });
  }

  void back(){
    setState(() {
      c = click.split("");
      c.removeLast();
      click = c.join();
    });
  }

  void clear(){
    setState(() {
      click = " ";
      ans = " ";
    });
  }

  void answer(){
    setState(() {
      var userValue = click;

      try{
        Parser P = Parser();
        Expression exp = P.parse(userValue);

        ContextModel cm = ContextModel();
        var tempAns = '${exp.evaluate((EvaluationType.REAL), cm)}';
        // String vString = vDouble.toInt().toString();
        // ans = tempAns.split('.')[0];
        ans = tempAns;
        click = ans.toString();


      }catch(e){
        log(e.toString());
      }
    });
  }
}

