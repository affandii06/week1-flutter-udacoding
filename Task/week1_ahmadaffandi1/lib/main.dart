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
      debugShowCheckedModeBanner: false,
      title: 'Register',
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
        primarySwatch: Colors.purple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Register'),
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
  bool value1 = false;
  bool _showPassword = false;
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
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text('Sign Up',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                ),
              )
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0))
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0))
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0))
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: TextFormField(
                obscureText: !this._showPassword,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: this._showPassword ? Colors.black : Colors.grey,
                    ),
                    onPressed: (){
                      setState(() => this._showPassword = this._showPassword);
                    },
                  )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: this._showPassword ? Colors.black : Colors.grey,
                    ),
                    onPressed: (){
                      setState(() => this._showPassword = this._showPassword);
                    },
                  )
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              child: Center(
                child: Text('Available to be a',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0
                          ),
                ),
              )
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Checkbox(
                            value: value1,
                            onChanged: (newvalue1){
                              setState(() {
                                value1 = newvalue1;
                              });
                            }
                    ),
                  ),
                  Container(
                    child: Text('Mentor',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0
                            ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 50.0),
                    child: Checkbox(
                            value: value1,
                            onChanged: (newvalue1){
                              setState(() {
                                value1 = newvalue1;
                              });
                            }
                    ),
                  ),
                  Container(
                    child: Text('Mentee',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0
                            ),
                    ),
                  )
                ]
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: value1,
                    onChanged: (newvalue1){
                      setState(() {
                        value1 = newvalue1;
                      });
                    }
                  ),
                  Container(
                    width: 300,
                    child: Text('I affirm that i have read and accept to be bound by the AnitaB.org Code of Conduct, Terms and Privacy Policy. Further, i consent to use of my information for the stated purpose',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0
                          ),
                    ),
                  )
                ]
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                  color: Colors.lightBlue[300],
                  child: Text('Sign Up'),
                  onPressed: (){}
                  ),
                  RaisedButton(
                  color: Colors.yellow,
                  child: Text('Next Page'),
                  onPressed: (){
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => Page2())
                  );
                },
              )
                ]
              )
            )
          ]
        )
      )
    );
  }
}
