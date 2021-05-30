import 'package:flutter/material.dart';
import 'package:mini_projek_firman/pages/home_page.dart';
import 'package:mini_projek_firman/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 200,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/room.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Boarding House',
                        style: text2.copyWith(fontSize: 30),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Find House to Stay and Happy',
                        style: text2.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 80,
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
                              'Get started',
                              style: text2.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
