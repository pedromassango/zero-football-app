import 'package:flutter/material.dart';
import 'package:zero/ui/components/page_reveal.dart';

class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IntroPageState();
  }
}

class IntroPageState extends State<IntroPage> {
  TextEditingController _usernameController, _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              height: 314,
              margin: EdgeInsets.only(left: 24, right: 24, top: 16),
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 32),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Entrar',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 16),
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        hintText: 'Nome de usuário',
                      ),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Palavra-passe',
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: double.maxFinite,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: Center(
                      child: Text(
                        'Entrar',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.person_add,
            color: Colors.red,
          ),
          label: Text(
            'Criar conta',
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {}),
    );
  }
}
