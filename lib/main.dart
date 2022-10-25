import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Pizzacard(),
  ));
}

class Pizzacard extends StatefulWidget {
  const Pizzacard({Key? key}) : super(key: key);

  @override
  State<Pizzacard> createState() => _PizzacardState();
}

class _PizzacardState extends State<Pizzacard> {
  int ninjalevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Pizza ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjalevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],

      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0,30.0,30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/dcpfp.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            Text(
                'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Hi_Pizza',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 1.0,
                fontSize: 28.0,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,

              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$ninjalevel',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,

              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text('ghoshprodeep@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 1.0,
                ),),




              ],
            ),
            SizedBox(height: 80.0),
            CircleAvatar(
              backgroundImage: AssetImage('assets/discord.jpg'),
              radius: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
