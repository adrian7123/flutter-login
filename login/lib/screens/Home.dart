import 'package:flutter/material.dart';
import 'package:login/widgets/Form.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.greenAccent[400],
      ), 
       
      body: Container(
        padding: EdgeInsets.all(40),
        child: Align(
          child: Column(
            children: [

              Text('Faça Seu Login', style: TextStyle(fontSize: 20)),
              
              Container(
                margin: EdgeInsets.all(30),
                child: FlutterLogo(size: 100, colors: Colors.green),
              ),
              
              FormWidget()
            
            ],
          ),
        )
      )
    );
  }
}