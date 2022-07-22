import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  String itemName;

  ListItem({this.itemName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 35,
        width: 250,
        padding: EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF3371aa),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              25,
            ),
            topRight: Radius.circular(
              15,
            ),
          ),
        ),
        child: Text(
          "$itemName",
          textAlign: TextAlign.center,
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: Color(0xffffffff),
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
