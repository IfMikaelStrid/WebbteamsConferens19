import 'package:conferens_2019/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import 'package:conferens_2019/screens/sample_screen.dart';
import 'package:conferens_2019/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DataProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'MyShop',
          theme: ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.black26,
            backgroundColor: Colors.grey[900],
            fontFamily: 'Lato',
            textTheme: ThemeData.dark().textTheme.copyWith(
                  title: TextStyle(
                    fontFamily: 'Anton',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  caption: TextStyle(
                    fontFamily: 'Anton',
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                  button: TextStyle(color: Colors.white),
                ),
          ),
          home:
              HomeScreen('Hello ${DateFormat.yMMMd().format(DateTime.now())}'),
          routes: {
            SampleScreen.routeName: (ctx) => SampleScreen(),
          }),
    );
  }
}
