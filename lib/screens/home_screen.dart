import 'package:conferens_2019/screens/sample_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  final String title;

  HomeScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Conferens 2019'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: RaisedButton(
          textColor: Theme.of(context).textTheme.button.color,
          color: Theme.of(context).primaryColor,
          elevation: 5,
          onPressed: () {
            Navigator.of(context).pushNamed(SampleScreen.routeName);
          },
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
