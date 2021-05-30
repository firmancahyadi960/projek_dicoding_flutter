import 'package:flutter/material.dart';

import '../theme.dart';

class FacilitiItem extends StatelessWidget {
  final String name;
  final String imageURL;
  final int total;

  FacilitiItem({this.name, this.imageURL, this.total});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageURL,
          width: 35,
        ),
        SizedBox(
          height: 7,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: text2.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: ' $name',
                style: text2.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
