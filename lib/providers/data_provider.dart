import 'package:flutter/material.dart';
import 'package:conferens_2019/models/data.dart';

class DataProvider with ChangeNotifier {
  List<Data> _dataItems = [
    Data(
      name: 'Eric',
      description: 'Farlig kille, sportig och duktig på frontend',
    ),
    Data(
      name: 'Kristoffer',
      description: 'Bra kille, lyser upp rummet',
    ),
    Data(
      name: 'Micke',
      description: 'Bra kille... slacker',
    )
  ];

  List<Data> get dataItems {
    return [..._dataItems];
  }
}
