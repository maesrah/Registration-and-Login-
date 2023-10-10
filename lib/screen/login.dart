import 'package:flutter/material.dart';

import 'package:uifirstproject/widget/login_form.dart';
import 'package:uifirstproject/widget/login_logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final Color _color = Theme(data: data, child: child);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Theme.of(context).primaryColor),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //First Container
            const LoginLogoWidget(),
            //Second Container
            Container(
              color: Theme.of(context).primaryColor,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Container(
                //height: MediaQuery.of(context).size.height - 270,
                //width: 39,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40.0))),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: const LoginForm(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
