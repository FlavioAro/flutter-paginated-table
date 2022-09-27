import 'package:flutter/material.dart';
import 'package:paginated_table/src/components/table.dart';
import 'package:paginated_table/src/data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DataTableSource _data = MyData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          CustomTable(
            columns: const [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('NAME')),
              DataColumn(label: Text('PRICE'))
            ],
            source: _data,
            columnSpacing: 100,
            horizontalMargin: 60,
            rowsPerPage: 8,
          ),
        ],
      ),
    );
  }
}
