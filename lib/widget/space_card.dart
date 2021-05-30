import 'package:flutter/material.dart';
import 'package:mini_projek_firman/model/spash.dart';
import 'package:mini_projek_firman/theme.dart';

class SpaceCard extends StatelessWidget {
  final Spash spash;
  SpaceCard(this.spash);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            height: 110,
            width: 130,
            child: Stack(
              children: [
                Image.asset(
                  spash.imageURL,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: bintangColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          36,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Icon_star_solid.png',
                          width: 22,
                          height: 22,
                        ),
                        Text(
                          '${spash.rating}/5',
                          style: text2.copyWith(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              spash.name,
              style: text2.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                text: '\$${spash.price}',
                style: text4.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                    text: '/ month',
                    style: text3.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              spash.city,
              style: text3.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
