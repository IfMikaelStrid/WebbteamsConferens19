import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:conferens_2019/models/track.dart';
import 'package:conferens_2019/providers/playlist.dart';

class VoteList extends StatelessWidget {
  upVote(String id, BuildContext ctx) {
    Provider.of<PlayList>(ctx).upVote(id);
  }

  downVote(String id, BuildContext ctx) {
    Provider.of<PlayList>(ctx).downVote(id);
  }

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
                width: 120,
                child: Row(
                  children: <Widget>[
                    Text(
                      dataItems[index].rating.toString(),
                      style: TextStyle(color: Colors.grey[900]),
                    ),
                    IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: () {
                        upVote(dataItems[index].id, context);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.thumb_down),
                      onPressed: () {
                        downVote(dataItems[index].id, context);
                      },
                    )
                  ],
                )),
          ),
        );
      },
      itemCount: dataItems.length,
    );
  }
}
