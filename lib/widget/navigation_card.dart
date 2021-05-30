import 'package:flutter/material.dart';
import 'package:mini_projek_firman/theme.dart';

class BottomNavigation extends StatelessWidget {
  final String imageURL;
  final bool isActive;
  BottomNavigation({this.imageURL, this.isActive});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          imageURL,
          width: 30,
          height: 30,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
