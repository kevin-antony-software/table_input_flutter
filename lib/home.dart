import "package:flutter/material.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // for (int i = 0; i < 18; i++)
          //   Text(
          //     "Test $i",
          //     style: Theme.of(context).textTheme.headline4,
          //   ),
          Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              // 0: IntrinsicColumnWidth(),
              // 1: FlexColumnWidth(),
              0: FixedColumnWidth(20),
              1: FixedColumnWidth(20),
              2: FixedColumnWidth(20),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  Container(
                    height: 32,
                    color: Colors.green,
                  ),
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Container(
                      height: 32,
                      width: 32,
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    height: 164,
                    color: Colors.blue,
                  ),
                ],
              ),
              TableRow(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                children: <Widget>[
                  Container(
                    height: 64,
                    width: 128,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 32,
                    color: Colors.yellow,
                  ),
                  Center(
                    child: Container(
                      height: 32,
                      width: 32,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
