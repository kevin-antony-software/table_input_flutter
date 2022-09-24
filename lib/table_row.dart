import 'package:flutter/material.dart';

class TableRow1 extends StatelessWidget {
  final int index;
  TableRow1({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var ptsControlller = TextEditingController();
    TextStyle textStyle = TextStyle(fontSize: 11);
    return Container(
      width: double.infinity,
      height: 31,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        color: index == 3 || index == 4 ? Colors.yellow[200] : Colors.grey[300],
      ),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 30,
            height: 30,
            color: index < 4
                ? Colors.blue
                : index == 4
                    ? Colors.red[700]
                    : index > 16
                        ? Colors.red
                        : Colors.grey[700],
            child: Text(
              (index + 1).toString(),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(width: 20),
          Text('Team name#${index + 1}', style: textStyle),
          Spacer(),
          Container(
            width: 28,
            child: Text('MP${index + 1}', style: textStyle),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 28,
            child: Text('W${index + 1}', style: textStyle),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 28,
            child: Text('D${index + 1}', style: textStyle),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 28,
            child: Text('L${index + 1}', style: textStyle),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 28,
            child: Text('G${index + 1}', style: textStyle),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 28,
            //child: Text('Pts${index + 1}', style: textStyle),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: ptsControlller,
              onChanged: (value) {
                Text(value);
              },
            ),
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
      ),
    );
  }
}
