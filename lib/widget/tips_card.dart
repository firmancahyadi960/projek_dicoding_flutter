import 'package:flutter/material.dart';
import 'package:mini_projek_firman/model/tips.dart';
import 'package:mini_projek_firman/pages/error_page.dart';
import 'package:mini_projek_firman/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  TipsCard(this.tips);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tips.imageURL,
          width: 80,
        ),
        SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.name,
              style: text2.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Updated ${tips.updateAt} ',
              style: text3.copyWith(fontSize: 14),
            ),
          ],
        ),
        Spacer(),
        IconButton(
          icon: Icon(Icons.chevron_right),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ErrorPage(),
              ),
            );
          },
          color: greyColor,
        ),
      ],
    );
  }
}
