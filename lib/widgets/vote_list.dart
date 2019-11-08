import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:conferens_2019/models/track.dart';
import 'package:conferens_2019/providers/playlist.dart';

class VoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataItems = Provider.of<PlayList>(context).dataItems;
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
              child:Icon(Icons.thumbs_up_down)
            ),
          ),
        );
      },
      itemCount: dataItems.length,
    );
  }
}
