import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int _moneyCounter = 0;
  MaterialColor _color = Colors.purple;

  void _increaseMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 500;
      if (_moneyCounter > 5000) _color = Colors.red;
    });
  }

  void _restMoney() {
    setState(() {
      _moneyCounter = 0;
      _color = Colors.purple;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Make It Rain!"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.help), onPressed: null),
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: null),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Get Rich Now For Free! xD\nYou May Marry Toka-Chan",
                style: TextStyle(
                  fontSize: 18.3,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  '\$$_moneyCounter',
                  style: TextStyle(
                      color: _color,
                      fontSize: 35.5,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Center(
              child: FlatButton(
                color: Colors.blue.shade500,
                onPressed: () => _increaseMoney(),
                child: Text("Money Money More Money"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _restMoney,
        child: Icon(Icons.attach_money),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Account Info")),
          BottomNavigationBarItem(
              icon: Icon(Icons.help), title: Text("Help Menu")),
          BottomNavigationBarItem(
              icon: Icon(Icons.exit_to_app), title: Text("Exit App")),
        ],
      ),
    );
  }
}
