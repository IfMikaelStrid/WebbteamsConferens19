import 'package:conferens_2019/providers/search.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchResult extends StatelessWidget {
  addSongToPlaylist(String id, BuildContext context) {
    Provider.of<SearchList>(context).addSongToPlaylist(id);
  }

  @override
  Widget build(BuildContext context) {
    final dataItems = Provider.of<SearchList>(context).dataItems;
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return Card(
          elevation: 5,
          child: ListTile(
            leading: Image.network(dataItems[index].imageUrl),
            title: Text(
              dataItems[index].name,
              style: Theme.of(context).textTheme.title,
            ),
            subtitle: Text(
              dataItems[index].artist,
              style: Theme.of(context).textTheme.caption,
            ),
            trailing: Container(
                child: IconButton(
              icon: Icon(Icons.add,color: Colors.green,),
              onPressed: (){
                addSongToPlaylist(dataItems[index].id,context);
              },
            )),
          ),
        );
      },
      itemCount: dataItems.length,
    );
  }
}
