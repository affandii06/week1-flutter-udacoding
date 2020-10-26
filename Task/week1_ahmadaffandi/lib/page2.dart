import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';

void main() {
  runApp(Page2());
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Covid 19 News'),
        ),
      ),
      body: Center(
          child: ListView(
            padding: EdgeInsets.only(top: 50.0),
            children: <Widget>[
              Container (
                child: Center(
                  child: Text('INDIA',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 40.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Cases : 249',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Today Cases : 55',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Deaths : 5',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 18.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Today Deaths : 1',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 18.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Recovered : 23',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Active Cases : 221',
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 18.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Critical : 0',
                                      style: TextStyle(
                                        color: Colors.yellow,
                                        fontSize: 18.0,
                                      )
                  )
                )
              ),
              Container(
                child: Center(
                  child: Text('Cases Per Million : 0',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18.0,
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
                child: Text('Back'),
                onPressed: (){
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => MyApp())
                  );
                },
              )
            )
            ]
          ),
        ),
     ); // This trailin
  }
}