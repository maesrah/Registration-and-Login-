import 'package:flutter/material.dart';

class RegistrationLogoWidget extends StatelessWidget {
  const RegistrationLogoWidget({
    super.key,
  });

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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Registration',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Be the first to know\n about profitable flights',
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
