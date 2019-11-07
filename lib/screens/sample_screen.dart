import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:conferens_2019/providers/data_provider.dart';

class SampleScreen extends StatelessWidget {
  static const routeName = '/sample-screen';

  @override
  Widget build(BuildContext context) {
    final dataItems = Provider.of<DataProvider>(context).dataItems;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample screen'),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            elevation: 5,
            child: ListTile(
              title: Text(
                dataItems[index].name,
                style: Theme.of(context).textTheme.title,
              ),
              subtitle: Text(
                dataItems[index].description,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          );
        },
        itemCount: dataItems.length,
      ),
    );
  }
}
