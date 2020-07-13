import 'package:ebook_app/screens/detail_screen.dart';
import 'package:ebook_app/widgets/rating.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'double_rounded_button.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;

  const ReadingListCard({
    Key key,
    this.image,
    this.title,
    this.auth,
    this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(29),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 13,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                Rating(rating: rating),
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: auth,
                            style: TextStyle(color: kLightBlackColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        width: 101,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(),
                              ),
                            );
                          },
                          child: Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: DoubleRoundedButton(text: 'Read'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
