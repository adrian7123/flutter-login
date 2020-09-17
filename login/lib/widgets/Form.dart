import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  TextEditingController _email = TextEditingController();
  TextEditingController _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [

            TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Email',
              ),
              controller: this._email,
            ),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Senha',
              ),
              controller: this._senha,
            ),

            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 34, bottom: 20),
              child: RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  print(this._email.text);
                  print(this._senha.text);
                },
                color: Colors.greenAccent[400],
                textColor: Colors.white,
              )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text('Esqueceu a Senha?', 
                  style: TextStyle(
                    color: Colors.greenAccent[400], 
                    decoration: TextDecoration.underline
                  )
                ),

                Text('Cadastre-se', 
                  style: TextStyle(
                    color: Colors.greenAccent[400], 
                    decoration: TextDecoration.underline
                  )
                ),
              ],
            )
          ],
        )
      )
    );
  }
}