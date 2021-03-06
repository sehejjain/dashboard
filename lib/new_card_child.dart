import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'all_constants.dart';

class NewCardChild extends StatelessWidget {
  NewCardChild({@required this.text, @required this.icon, @required this.desc});
  final String text;
  final IconData icon;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            bottomLeft: Radius.circular(40.0),
            topRight: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: FaIcon(
              icon,
              size: 40.0,
              color: Color(0xFF354B98),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(fontSize: 20.0, color: kTextColor),
                  ),
                  Text(
                    desc,
                    style: TextStyle(color: kTextColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
