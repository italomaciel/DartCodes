import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrar'),
        centerTitle: true,
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Usuário'
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (text){
                if(text.isEmpty) return 'Insira um Usuário';
              },
            ),
            SizedBox(height: 16.0,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Senha'
              ),
              obscureText: true,
              validator: (text){
                if(text.isEmpty) return 'Insira uma Senha';
              },
            ),
            SizedBox(height: 16.0,),
            RaisedButton(
              child: Text('ENTRAR',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onPressed: (){
                if(_formkey.currentState.validate()){
                  
                }
              },
            )
          ],
        ),
      ),
    );
  }
}