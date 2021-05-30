import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mini_projek_firman/model/city.dart';
import 'package:mini_projek_firman/model/spash.dart';
import 'package:mini_projek_firman/model/tips.dart';
import 'package:mini_projek_firman/pages/detail_page_1.dart';
import 'package:mini_projek_firman/pages/detail_page_2.dart';
import 'package:mini_projek_firman/pages/detail_page_3.dart';
import 'package:mini_projek_firman/theme.dart';
import 'package:mini_projek_firman/widget/city_card.dart';
import 'package:mini_projek_firman/widget/informasi_card.dart';
import 'package:mini_projek_firman/widget/navigation_card.dart';
import 'package:mini_projek_firman/widget/space_card.dart';
import 'package:mini_projek_firman/widget/tips_card.dart';

import 'detail_page.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Explore Now',
                style: text2.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Mencari apartment terbaik',
                style: text2.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
                right: 10,
              ),
              child: InformasiCard(),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
                right: edge,
              ),
              child: Text(
                'Popular Cities',
                style: text2.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/gambar1.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/images/gambar2.jpg',
                      isPopuler: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/gambar3.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 4,
                      name: 'Lombok',
                      imageUrl: 'assets/images/gambar4.jpg',
                    ),
                  ),
                ],
              ),
            ),
            // NOTE : RECOMEMDED
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Recommended Space',
                style: text2.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(),
                        ),
                      );
                    },
                    child: SpaceCard(
                      Spash(
                        id: 1,
                        name: 'Sanctuary Home',
                        imageURL: 'assets/images/image2.png',
                        price: 52,
                        city: 'Jakarta',
                        rating: 5,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage1(),
                        ),
                      );
                    },
                    child: SpaceCard(
                      Spash(
                        id: 2,
                        name: 'Emerald Stay',
                        imageURL: 'assets/images/image1.png',
                        price: 30,
                        city: 'Surabaya',
                        rating: 4,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage2(),
                        ),
                      );
                    },
                    child: SpaceCard(
                      Spash(
                        id: 3,
                        name: 'Kuretakeso Hotto',
                        imageURL: 'assets/images/image3.png',
                        price: 11,
                        city: 'Palembang',
                        rating: 3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage3(),
                        ),
                      );
                    },
                    child: SpaceCard(
                      Spash(
                        id: 4,
                        name: 'Orange Crown',
                        imageURL: 'assets/images/image4.png',
                        price: 20,
                        city: 'Medan',
                        rating: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: text2.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        imageURL: 'assets/images/icon.png',
                        name: 'City Guidelines',
                        updateAt: '20 Apr'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                        id: 2,
                        imageURL: 'assets/images/icon1.png',
                        name: 'City Guidelines',
                        updateAt: '20 Apr'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(
            18,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigation(
              imageURL: 'assets/images/icon_home.png',
              isActive: true,
            ),
            BottomNavigation(
                imageURL: 'assets/images/icon_card.png', isActive: false),
            BottomNavigation(
              imageURL: 'assets/images/icon_mail.png',
              isActive: false,
            ),
            BottomNavigation(
              imageURL: 'assets/images/icon_user.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
