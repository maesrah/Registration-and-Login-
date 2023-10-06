import 'package:flutter/material.dart';
import 'package:uifirstproject/class/person.dart';
import 'package:uifirstproject/screen/login.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formkey = GlobalKey<FormState>();
  String _selectedCountry = '';
  Gender? gender;
  bool? _isChecked = false;

  _RegistrationFormState() {
    _selectedCountry = _country[0];
  }

  final _country = [
    'Malaysia',
    'Singapore',
    'Thailand',
    'Philipine',
    'Vietname'
  ];
  final emailConrtoller = TextEditingController();
  final passController = TextEditingController();
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                return 'Enter correct name';
              } else {
                return null;
              }
            },
            decoration: const InputDecoration(
                hintText: 'Full Name',
                labelText: 'Full Name *',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)))),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              //a.aaba@aa1a_a.com
              if (value!.isEmpty ||
                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
                return 'Enter correct emaol';
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
              } else if (value.length < 6) {
                return 'Password length should not be less than 6 characters';
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
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter password';
              } else if (value.length < 6) {
                return 'Password length should not be less than 6 characters';
              }
              return null;
            },
            obscureText: _visible,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              labelText: 'Confirm Password*',
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
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
                hint: const Text('Select Country'),
                dropdownColor: const Color.fromARGB(255, 110, 65, 118),
                iconSize: 36,
                isExpanded: true,
                value: _selectedCountry,
                style: const TextStyle(
                    color: Color.fromARGB(255, 23, 23, 23), fontSize: 16),
                items: _country.map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCountry = value as String;
                  });
                }),
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    value: Gender.Male,
                    groupValue: gender,
                    title: Text(Gender.Male.name),
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    value: Gender.Female,
                    groupValue: gender,
                    title: Text(Gender.Female.name),
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    }),
              ),
            ],
          ),
          CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            controlAffinity: ListTileControlAffinity.leading,
            value: _isChecked,
            title: Transform.translate(
              offset: const Offset(-20, 0),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Keep me updated (Optional)\n',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Notify me about exclusive offers',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight
                            .normal, // Normal font weight for the rest of the text
                      ),
                    ),
                  ],
                ),
              ),
            ),
            onChanged: (value) {
              setState(() {
                _isChecked = value ?? false;
              });
            },
          ),
          const SizedBox(
            height: 4,
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     const Text(
          //       'By creating an account, I accept the',
          //       textAlign: TextAlign.center,
          //     ),
          //     TextButton(
          //         onPressed: () {
          //           setState(() {
          //             ScaffoldMessenger.of(context).showSnackBar(
          //                 const SnackBar(content: Text('Terms and Condition')));
          //           });
          //         },
          //         child: const Text(
          //           'Terms and Condition',
          //           style: TextStyle(decoration: TextDecoration.underline),
          //         )),
          //   ],
          // ),
          InkWell(
              onTap: () {
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Terms and Condition')));
                });
              },
              child: Transform.translate(
                offset: const Offset(10, 0),
                child: RichText(
                  text: TextSpan(
                    text: 'By creating an account, I accept the',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Terms and Condition',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          SizedBox(
            width: 250, // Expand width to fill the parent's width
            height: 50,
            child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 110, 65, 118)),
                ),
                onPressed: () {
                  setState(() {
                    if (_formkey.currentState!.validate()) {
                      //the form is validate, check the radioButton
                      if (gender == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Please select your gender!"),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Successfuly Registered!"),
                          ),
                        );
                      }
                    }
                  });
                },
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    });
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
