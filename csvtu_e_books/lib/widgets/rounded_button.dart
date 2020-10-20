import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final double verticalpadding;
  final double fontsize;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.verticalpadding = 17.5,
    this.fontsize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 25),
        padding: EdgeInsets.symmetric(vertical: verticalpadding, horizontal: 1),
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(.50),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 20),
                blurRadius: 30,
                color: Color(0xFF666666).withOpacity(.11),
              ),
            ]),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontsize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
