import 'package:flutter/material.dart';

import '../constants.dart';

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int num;

  const ChapterCard({
    Key key,
    this.name,
    this.tag,
    this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 48,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
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
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $num : $name\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text: tag,
                    style: TextStyle(
                      color: kLightBlackColor,
                    )),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 10,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
