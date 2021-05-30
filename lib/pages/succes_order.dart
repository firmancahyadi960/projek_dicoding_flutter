import 'package:flutter/material.dart';
import 'package:mini_projek_firman/pages/home_page.dart';

import '../theme.dart';

class SuccesOrder extends StatelessWidget {
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
                'assets/images/succes.png',
                width: 260,
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                'Order Is Ready',
                style: text2.copyWith(fontSize: 24),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                'You Have Success fullyFeed Your Order',
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
