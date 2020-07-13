import 'package:ebook_app/constants.dart';
import 'package:ebook_app/widgets/double_rounded_button.dart';
import 'package:ebook_app/widgets/rating.dart';
import 'package:ebook_app/widgets/reading_list_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/main_page_bg.png'),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.display1,
                        children: [
                          TextSpan(text: 'What are you \nreading '),
                          TextSpan(
                            text: 'today?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: 'assets/images/book-1.png',
                          rating: 4.9,
                          title: 'Crushing & Influence',
                          auth: 'Gary Venchuk',
                        ),
                        ReadingListCard(
                          image: 'assets/images/book-2.png',
                          rating: 4.5,
                          title: 'Top Ten Business Hacks',
                          auth: 'Herman Joel',
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: 'Best of the '),
                              TextSpan(
                                text: 'day',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          height: 205,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 24,
                                      top: 24,
                                      right: size.width * .35),
                                  height: 185,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEAEAEA).withOpacity(.45),
                                    borderRadius: BorderRadius.circular(29),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'New York Time\'s Best For 11th March 2020',
                                        style: TextStyle(
                                          fontSize: 9,
                                          color: kLightBlackColor,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'How To Win Friends & Influence People',
                                        style:
                                            Theme.of(context).textTheme.title,
                                      ),
                                      Text(
                                        'Gary Venchuk',
                                        style: TextStyle(
                                          color: kLightBlackColor,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Rating(rating: 5.0),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Text(
                                              'When the earth was flat and everyone wanted to win the game of thrones by George R.R. Martin.',
                                              maxLines: 3,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: kLightBlackColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Image.asset(
                                  'assets/images/book-3.png',
                                  width: size.width * .37,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: SizedBox(
                                  height: 40,
                                  width: size.width * .3,
                                  child: DoubleRoundedButton(text: 'Read'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.display1,
                            children: [
                              TextSpan(text: 'Continue '),
                              TextSpan(
                                text: 'reading...',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 20,
                                      left: 30,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Crushing & Influence',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Gary Venchuk',
                                                style: TextStyle(
                                                    color: kLightBlackColor),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  'Chapter 7 of 10',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/book-1.png',
                                          width: 55,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
