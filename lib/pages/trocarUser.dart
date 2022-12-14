import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrocarUser extends StatefulWidget {
  const TrocarUser({Key? key}) : super(key: key);

  @override
  State<TrocarUser> createState() => _TrocarUserState();
}

class _TrocarUserState extends State<TrocarUser> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 18, 30, 138),
          centerTitle: true,
          title: const Text(
            'AstroApp',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: buildBody(),        
        ),
      ),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: 
          Container(
            child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              cardUser(email: 'dbss1@aluno.ifal.edu.br', usuario: 'Daniel'),
              cardUser(email: 'mfs22@aluno.ifal.edu.br', usuario: 'Felype'),
              cardUser(email: 'aviao@aluno.ifal.edu.br', usuario: 'Içami'),
              cardUser(email: 'progamer@aluno.ifal.edu.br', usuario: 'Ricardo'),
              cardUser(email: 'cristiano@aluno.ifal.edu.br', usuario: 'Vítor'),
                
            ],      
                ),
          ),
    );
  }

  // onPressedRegister() {}

  cardUser({
    required String email,
    required String usuario,
  }){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      child: InkWell(
        child: Row(
          children: [
            Container(
              height: 72,
              width: 64,
              color: Colors.yellow,
              child: const Icon(
                Icons.person,
                size: 50,
              ),
            ),
            Container(
              width: 204,
              height: 72,
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    usuario,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    email,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
