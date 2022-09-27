import 'package:flutter/material.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({
    Key? key,
    required this.columns,
    required this.source,
    required this.columnSpacing,
    required this.horizontalMargin,
    required this.rowsPerPage,
  }) : super(key: key);

  final List<DataColumn> columns;
  final DataTableSource source;
  final double columnSpacing;
  final double horizontalMargin;
  final int rowsPerPage;

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(
      source: widget.source,
      columns: widget.columns,
      columnSpacing: widget.columnSpacing,
      horizontalMargin: widget.horizontalMargin,
      rowsPerPage: widget.rowsPerPage,
    );
  }
}
