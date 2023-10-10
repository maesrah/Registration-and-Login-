import 'package:flutter/material.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        //height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log in',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your Wings to Seamless\nFlight Booking!',
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0)),
                child: Transform.rotate(
                  angle: 0.3,
                  child: Icon(
                    Icons.flight,
                    size: 70,
                    color: Theme.of(context).primaryColor,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
