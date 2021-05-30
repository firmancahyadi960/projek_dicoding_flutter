import 'package:flutter/material.dart';
import 'package:mini_projek_firman/pages/succes_order.dart';
import 'package:mini_projek_firman/theme.dart';
import 'package:mini_projek_firman/widget/facility_item.dart';

class DetailPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image8.jpg',
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              SizedBox(
                height: 289,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: backgroudColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Orange Crown',
                                style: text2.copyWith(
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text.rich(
                                TextSpan(
                                  text: '\$20 ',
                                  style: text4.copyWith(fontSize: 16),
                                  children: [
                                    TextSpan(
                                      text: ' / month',
                                      style: text3.copyWith(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                            ],
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
                        'Main Facilities',
                        style: text2.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FacilitiItem(
                            imageURL: 'assets/images/001-bar-counter.png',
                            name: 'kitchen',
                            total: 2,
                          ),
                          FacilitiItem(
                            imageURL: 'assets/images/002-double-bed.png',
                            name: 'Master Bed',
                            total: 3,
                          ),
                          FacilitiItem(
                            imageURL: 'assets/images/003-cupboard.png',
                            name: 'Big Lemari',
                            total: 1,
                          ),
                          FacilitiItem(
                            imageURL: 'assets/images/004-bath.png',
                            name: 'Bathrooms',
                            total: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Text(
                        'Photos',
                        style: text2.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 88,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: edge,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              17,
                            ),
                            child: Image.asset(
                              'assets/images/kitchen/kitchen4.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              17,
                            ),
                            child: Image.asset(
                              'assets/images/Master_Badroom/bed4.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              17,
                            ),
                            child: Image.asset(
                              'assets/images/lemari_pakaian/lemari.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              17,
                            ),
                            child: Image.asset(
                              'assets/images/kamar_mandi/bathroom1.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Text(
                        'Location',
                        style: text2.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jln. Kappan Sukses No. 20 \nMedan',
                            style: text3.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Image.asset(
                            'assets/images/btn_wishlist.png',
                            width: 40,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            17,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SuccesOrder(),
                                ),
                              );
                            },
                            child: Text(
                              'Order',
                              style: text2.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
              vertical: 60,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/btn_back.png',
                    width: 40,
                  ),
                ),
                Image.asset(
                  'assets/images/btn_wishlist_1.png',
                  width: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
