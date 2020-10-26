import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  runApp(Page2());
}
void setState(Null Function() param0) {
}

class Page2 extends StatelessWidget {
  TextEditingController controller = TextEditingController (text: "Affandi");
  TextEditingController controller1 = TextEditingController (text: "      Ahmad Affandi");
  TextEditingController controller2 = TextEditingController (text: "affandi@gmail.com");
  TextEditingController controller3 = TextEditingController (text: "Siswa Mentoring UdaCoding");
  TextEditingController controller4 = TextEditingController (text: "Affandii1");
  TextEditingController controller5 = TextEditingController (text: "Padang");
  bool value1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Profile'),
        )
        ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                color: Colors.purple[900],
                borderRadius: BorderRadius.circular(100.0)
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:100, right:100),
              child: Center(
                child: TextField(
                      controller: controller1,
                )
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right:15),
              child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        labelText: 'Username'
                      ),
              )
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right:15),
              child: TextField(
                      controller: controller2,
                      decoration: InputDecoration(
                        labelText: 'Email'
                      ),
              )
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text('Available to mentor',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0
                            ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Checkbox(
                            value: value1,
                            onChanged: (newvalue1){
                              setState(() {
                                value1 = newvalue1;
                              });
                            }
                    ),
                  ),
                ]
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text('Needs Mentoring',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0
                            ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Checkbox(
                            value: value1,
                            onChanged: (newvalue1){
                              setState(() {
                                value1 = newvalue1;
                              });
                            }
                    ),
                  ),
                ]
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right:15),
              child: TextField(
                      controller: controller3,
                      decoration: InputDecoration(
                        labelText: 'Bio'
                      ),
              )
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right:15),
              child: TextField(
                      controller: controller4,
                      decoration: InputDecoration(
                        labelText: 'Stack Username'
                      ),
              )
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right:15),
              child: TextField(
                      controller: controller5,
                      decoration: InputDecoration(
                        labelText: 'Location'
                      ),
              )
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(onPressed: (){},
                child: Icon(Icons.edit) ,
              ),
            )
          ]
        ),
      ),
    );
  }
}

