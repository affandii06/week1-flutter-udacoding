import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19 News',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Covid 19 News'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(
        child: Text(widget.title),
        )
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 150.0),
          children: <Widget>[
            Container (
              child: Center(
                child: Text('All Cases : 272691',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                    )
                )
              )
            ),
            Container(
              child: Center(
                child: Text('All Deaths : 11310',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 22.0,
                                    )
                )
              )
            ),
            Container(
              child: Center(
                child: Text('All Recovered : 90618',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 22.0,
                                    )
                )
              )
            ),
            Container(
              child: Center(
                child: Text('All Active Cases : 170763',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 22.0,
                                    )
                )
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Input A Country",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
                    ),
                ),
              )
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text('Search',
                                      style: TextStyle(
                                        color: Colors.white,
                                      )
                          ),
                        onPressed: (){}),
                    ),
                  Container(
                    width: 10.0
                  ),
                  Expanded(
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text('All Information',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                        ),
                        onPressed: (){}),
                    )
                ],
              )
            ),
            Expanded(
                child: Expanded(
                  child: RaisedButton(
                      color: Colors.red,
                      child: Text('Update Of Sri Lanka',
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                      ),
                      onPressed: (){},
                    ),
                )
              ),
            Container(
              child: Center(
                child: Text('IMPORTANT',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16.0,
                                    )
                )
              )
            ),
            Container(
              child: Center(
                child: Text('Search "South Korea" as "Korea"',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                    )
                )
              )
            ),
            Container(
              width: 100.0,
              child: RaisedButton(
                color: Colors.yellow,
                child: Text('Next Page'),
                onPressed: (){
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Page2())
                  );
                },
              )
            )
          ]
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

