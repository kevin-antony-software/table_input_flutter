import "package:flutter/material.dart";

class TopRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 11);

    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          child: Text('#'),
        ),
        SizedBox(width: 20),
        Container(alignment: Alignment.center, child: Text('Team')),
        Spacer(),
        Container(
          width: 28,
          child: Text('MP', style: textStyle),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 28,
          child: Text('W', style: textStyle),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 28,
          child: Text('D', style: textStyle),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 28,
          child: Text('L', style: textStyle),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 28,
          child: Text('G', style: textStyle),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 28,
          child: Text('Pts', style: textStyle),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 5,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[600],
          ),
          padding: EdgeInsets.fromLTRB(10, 5, 2, 5),
        ),
      ],
    );
  }
}
