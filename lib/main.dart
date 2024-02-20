import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Autorization', home: Autorization());
  }
}

class Autorization extends StatelessWidget {
  const Autorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Autorization',
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 275),
            width: 400,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 150, left: 50, right: 50),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Password"),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Registration()),
              );
            },
            child: const ElevatedButton(
              onPressed: null,
              child: Text('Registration'),
            ),
          )
        ]),
      ),
    );
  }
}

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registration',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 275),
            width: 400,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 50, right: 50),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Фамилия"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 50, right: 50),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Имя"),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 50, right: 50),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Отчество"),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 50, right: 50),
                  child: TextField(
                    decoration: InputDecoration(labelText: "Номер"),
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, left: 50, right: 50),
                  child: TextField(
                    decoration:
                        InputDecoration(labelText: "Адрес электронной почты"),
                    obscureText: true,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
              );
            },
            child: const ElevatedButton(
              onPressed: null,
              child: Text('Back'),
            ),
          )
        ]),
      ),
    );
  }
}
