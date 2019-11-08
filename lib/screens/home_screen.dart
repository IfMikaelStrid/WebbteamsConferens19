import 'package:conferens_2019/screens/sample_screen.dart';
import 'package:conferens_2019/widgets/vote_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Partify'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: VoteList(),
      ),
    );
  }
}
