import 'package:conferens_2019/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:conferens_2019/providers/search.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search-screen';

  @override
  Widget build(BuildContext context) {
    final dataItems = Provider.of<SearchList>(context).dataItems;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Sök'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        //child: VoteList(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.white,
                child: TextField(
                  style: TextStyle(
                      color: Theme.of(context).textTheme.caption.color),
                  onChanged: (text) {
                    print("First text field: $text");
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
