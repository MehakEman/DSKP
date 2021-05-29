import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
  class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Test App",
        home: Scaffold(
          appBar: AppBar(title:Text("Assignment 1")),
          floatingActionButton: Wrap( //will break to another line on overflow
            direction: Axis.horizontal, //use vertical to show  on vertical axis
            children: <Widget>[
              Container(
                  margin:EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: () { counter++;
                    print('Counter Value: $counter');
                    setState(() {});


                      //action code for button 1
                    },
                    child: Icon(Icons.add),
                  )
              ), //button first

              Container(
                  margin:EdgeInsets.all(10),
                  child: FloatingActionButton(
                    onPressed: (){
                      counter--;
                      print('Counter Value: $counter');
                      setState(() {});
                      //action code for button 2
                    },
                    backgroundColor: Colors.deepPurpleAccent,
                    child: Icon(Icons.arrow_downward),
                  )
              ), // button second



              // Add more buttons here
            ],
          ),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'You have pushed  the  button this many times:',
    style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Text(

        'Counter Value: $counter',
    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    ),
    ],
    ),
    ),
    ),
    );
  }
}