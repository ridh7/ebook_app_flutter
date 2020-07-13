import 'package:flutter/material.dart';

import '../constants.dart';

class DoubleRoundedButton extends StatelessWidget {
  final String text;

  const DoubleRoundedButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: kBlackColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(29),
          bottomRight: Radius.circular(29),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
