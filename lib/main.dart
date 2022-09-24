import 'package:flutter/material.dart';
import 'package:flutter_login/table_row.dart';
import 'package:flutter_login/top_row.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scoreboard'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TopRow(),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 35,
                itemBuilder: (context, index) {
                  return TableRow1(index: index);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
