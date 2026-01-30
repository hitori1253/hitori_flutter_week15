import 'package:flutter/material.dart';
import 'package:hitori15/page/row_page.dart';
import 'package:hitori15/views/column.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RowPage());
    // ignore: dead_code
    return MaterialApp(home: ColumnPage());
  }
}