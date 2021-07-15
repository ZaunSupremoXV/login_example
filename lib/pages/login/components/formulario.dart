import 'package:flutter/material.dart';
import 'package:login/pages/home/home_page.dart';
import 'package:validators/validators.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email",
                hintStyle: TextStyle(color: Colors.grey[400]),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) => !isEmail(value!) ? "Email inválido." : null,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Senha",
                hintStyle: TextStyle(color: Colors.grey[400]),
              ),
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Insira sua senha.';
                } else if (value.length < 6) {
                  return 'Quantidade de caracteres inválido.';
                }
                return null;
              },
              // obscureText: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //     SnackBar(content: Text('Processing Data')));
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(143, 148, 251, 1)),
              child: Text('Entrar'),
            ),
          ),
        ],
      ),
    );
  }
}
