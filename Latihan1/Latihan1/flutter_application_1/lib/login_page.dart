import 'package:flutter/material.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController txtUsername = new TextEditingController();
  TextEditingController txtPassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text("Login"),
                TextFormField(
                  controller: txtUsername,
                  decoration: InputDecoration(hintText: "Masukkan Username "),
                ),
                TextFormField(
                  controller: txtPassword,
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Masukkan Password "),
                ),
                ButtonTheme(
                    minWidth: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        String username = txtUsername.text;
                        String password = txtPassword.text;
                        if (username == "admin" && password == "admin") {
                          showDialog(context: context, builder: AlertDialog())
                        }
                      },
                      child: Text("Login"),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
