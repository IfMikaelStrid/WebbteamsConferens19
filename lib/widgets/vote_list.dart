import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:conferens_2019/providers/playlist.dart';

class VoteList extends StatelessWidget {
  upVote(String id, BuildContext ctx) {
    Provider.of<PlayList>(ctx).upVote(id);
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
              
              child: IconButton(icon: Icon( Icons.thumb_up),
                onPressed: (){
                  upVote(dataItems[index].id, context);
                },
              ),
            ),
          ),
        );
      },
      itemCount: dataItems.length,
    );
  }
}
