import 'package:flutter/material.dart';
import 'package:uifirstproject/screen/registration.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formkey = GlobalKey<FormState>();
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              //a.aaba@aa1a_a.com
              if (value!.isEmpty ||
                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
                return 'Enter correct email';
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email*',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter password';
              }
              return null;
            },
            obscureText: _visible,
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password*',
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    _visible = !_visible;
                  });
                },
                child: Icon(_visible ? Icons.visibility : Icons.visibility_off),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Theme.of(context).primaryColor),
                ),
                onPressed: () {
                  setState(() {
                    if (_formkey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Successfuly Log In!"),
                        ),
                      );
                    }
                  });
                },
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Do not have an account?',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistrationPage(),
                        ),
                      );
                    });
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
