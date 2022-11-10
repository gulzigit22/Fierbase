import 'dart:developer';
import 'package:firebase1/home/home_page.dart';
import 'package:firebase1/login/login1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignUp> {
  String email = '';
  String password = '';
  final auth = FirebaseAuth.instance;
  bool _obscureText = true;

  late String _password;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'sigup',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(children: [
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        email = value.trim();
                      });
                      log(email);
                    },
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      hintText: "Email",
                      labelText: "Email",
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        password = value.trim();
                      });
                      log(password);
                    },
                    decoration: InputDecoration(
                      hintText: 'password',
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (val) =>
                        val!.length < 6 ? 'Password too short.' : null,
                    onSaved: (val) => _password = val!,
                    obscureText: _obscureText,
                  ),
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () async {
                    if (email.isNotEmpty && password.isNotEmpty) {
                      await _loginres(email, password);
                    }
                  },
                  height: 40,
                  child: const Center(
                    child: Text(
                      'sigup',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Container(
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                          child: Text(
                        'sigup',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }

  Future<void> _loginres(String emailAddress, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const home_page()),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
