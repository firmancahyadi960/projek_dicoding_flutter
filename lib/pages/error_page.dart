import 'package:flutter/material.dart';
import 'package:mini_projek_firman/pages/home_page.dart';
import 'package:mini_projek_firman/theme.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/404.png',
                width: 300,
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Where are you going ?',
                style: text2.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'Seems like the page that you were \n requested is already gone',
                style: text3.copyWith(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 210,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ),
                      );
                    },
                    child: Text(
                      'Back to Home',
                      style: text2.copyWith(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
