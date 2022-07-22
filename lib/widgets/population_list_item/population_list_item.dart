import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PopulationListItem extends StatelessWidget {
  String year;
  String population;

  PopulationListItem({this.year, this.population});

  @override
  Widget build(BuildContext context) {
    NumberFormat numberFormat = NumberFormat(
      "#,##,000",
    );
    return Center(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 300,
        padding: EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        decoration: BoxDecoration(
          color: Color(0xFF3371aa),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              20,
            ),
            topRight: Radius.circular(
              20,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Year \n $year",
              textAlign: TextAlign.center,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Color(0xffffffff),
                fontSize: 15,
              ),
            ),
            Text(
              "Population \n ${numberFormat.format(int.parse(population))}",
              textAlign: TextAlign.center,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Color(0xffffffff),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
