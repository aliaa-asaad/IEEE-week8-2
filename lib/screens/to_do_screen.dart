import 'package:flutter/material.dart';
import 'package:week8_2/widgets/custom_list_tile.dart';
import '../data.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4368FF),
        elevation: 0,
        title: Text('Todo List',
          style: TextStyle(fontWeight: FontWeight.w800),),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff4368FF),
      body: Container(
        child: ListView(
          children: TODO!
              .map(
                (data) => CustomListTile(
                  title: data.task,
                  time: data.time,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
