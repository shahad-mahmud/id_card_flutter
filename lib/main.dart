import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[900],
      appBar: AppBar(
        title: Text('Id card'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/shahad.jpg'),
              radius: 45.0,
            ),
            Divider(
              height: 64.0,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey[900], letterSpacing: 2),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              'KAMAL',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Current level',
              style: TextStyle(color: Colors.grey[900], letterSpacing: 2),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[800],
                ),
                SizedBox(width: 4.0,),
                Text(
                  'kamal@ninja.co',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 20.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level += 1;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}
