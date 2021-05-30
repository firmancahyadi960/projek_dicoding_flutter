import 'package:flutter/material.dart';
import 'package:mini_projek_firman/pages/error_page.dart';
import 'package:mini_projek_firman/theme.dart';

class InformasiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          Image.asset(
            'assets/images/icon_catatan.png',
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Safety',
                style: text2.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Kindly only use our official card',
                style: text2.copyWith(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 10 + edge,
            child: IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ErrorPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//  child: Container(

//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: Image.asset(
//                       'assets/images/icon_catatan.png',
//                       width: 55,
//                       height: 55,
//                     ),
//                   ),
//                 ),