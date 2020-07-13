import 'package:ebook_app/constants.dart';
import 'package:ebook_app/widgets/chapter_card.dart';
import 'package:ebook_app/widgets/rating.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * .1),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Crushing &',
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .copyWith(fontSize: 29),
                                  ),
                                  Text(
                                    'Influence',
                                    style: Theme.of(context)
                                        .textTheme
                                        .display1
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 29,
                                        ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Text(
                                              'hi hello hey how are you buddy mate friend lololol sup man hatt yo yo honey singh wallaturr susli',
                                              style: TextStyle(
                                                color: kLightBlackColor,
                                                fontSize: 10,
                                              ),
                                              maxLines: 5,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: 5),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .6,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 10),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        offset: Offset(0, 15),
                                                        blurRadius: 30,
                                                        color: Color(0xFF666666)
                                                            .withOpacity(.2),
                                                      ),
                                                    ],
                                                  ),
                                                  child: Text(
                                                    'Read',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            onPressed: () {},
                                          ),
                                          Rating(rating: 3.9),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Image.asset('assets/images/book-1.png'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 20),
                  child: Column(
                    children: [
                      ChapterCard(
                        name: 'Money',
                        num: 1,
                        tag: 'Life is about change',
                      ),
                      ChapterCard(
                        name: 'Power',
                        num: 2,
                        tag: 'Everybody loves power',
                      ),
                      ChapterCard(
                        name: 'Influence',
                        num: 3,
                        tag: 'Influence easily like never before',
                      ),
                      ChapterCard(
                        name: 'Win',
                        num: 4,
                        tag: 'Winning is what matters',
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'You might also ',
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .copyWith(fontSize: 28),
                        ),
                        TextSpan(
                          text: 'like...',
                          style: Theme.of(context).textTheme.display1.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                      text: 'How to Win\nFriends & Influence\n',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    TextSpan(
                                      text: 'Gary Venchuk',
                                      style: TextStyle(color: kLightBlackColor),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Rating(rating: 3.8),
                                  SizedBox(width: 20),
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(vertical: 20),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(0, 15),
                                          blurRadius: 30,
                                          color:
                                              Color(0xFF666666).withOpacity(.2),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      'Read',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          'assets/images/book-2.png',
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
