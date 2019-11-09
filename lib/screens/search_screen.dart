import 'package:conferens_2019/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:conferens_2019/providers/search.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/search-screen';
  final textInputController = TextEditingController();

  search(String query, BuildContext context) {
    Provider.of<SearchList>(context).search(query);
  }

  @override
  Widget build(BuildContext context) {
    final dataItems = Provider.of<SearchList>(context).dataItems;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sök'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.grey[900],
              height: (MediaQuery.of(context).size.height * 0.1) -
                  MediaQuery.of(context).padding.top,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                      controller: textInputController,
                      style: TextStyle(
                          color: Theme.of(context).textTheme.caption.color),
                      onSubmitted: (text) {
                        search(text, context);
                      },
                    ),
                  ),
                ),
              ),
            ), //sök,
            Container(
              color: Colors.grey[900],
              height: MediaQuery.of(context).size.height * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchResult(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
