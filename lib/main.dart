import 'package:flutter/material.dart';

void main() {
  runApp(MantApp());
}

class MantApp extends StatelessWidget {
  MantApp({super.key});

  var inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MantApp'),
        ),
        drawer: const Drawer(
            child: SafeArea(
                child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Navigation',
            style: TextStyle(fontSize: 26),
          ),
        ))),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Card(
                color: Color.fromARGB(183, 182, 182, 182),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rawr',
                        style: TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 7, 7, 7)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'asjdajdbajsdjasdbhabsndkn jasdhnsjadbhabsjdhwadjnwiunadw dnajsndjsandkad jandjansdjand asndjsndakndak',
                          style: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.dashboard),
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Text('MantApp (Mantap App)'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.dashboard),
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: Text('MantApp (Mantap App)'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                controller: inputController,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.av_timer), label: 'Time'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
