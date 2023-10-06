import 'package:flutter/material.dart';
import 'package:uifirstproject/widget/registration_form.dart';
import 'package:uifirstproject/widget/registration_logo.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    //column and dua container
    /*in container ada column
    container - row
    text,name,email,password,confirm,
    country dropdown,gender radiotbutton
    checkbox for newsletter
    sncakbar for clickable terms and condition
    */
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).primaryColor),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //First Container
            const RegistrationLogoWidget(),
            //Second Container
            Container(
              color: Theme.of(context).primaryColor,
              height: 1000,
              width: 400,
              child: Container(
                height: MediaQuery.of(context).size.height - 270,
                width: 390,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40.0))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Register with just one step',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        //Elevated Button Gmail & Facebook
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(100, 70),
                                ),
                                child: const Icon(
                                  Icons.mail,
                                  size: 40,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(100, 70),
                                ),
                                child: const Icon(
                                  Icons.facebook,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Or register login with E-mail',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //Registration form
                        const RegistrationForm(),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
