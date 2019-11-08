import 'package:flutter/material.dart';
import 'package:conferens_2019/widgets/vote_list.dart';
import 'package:conferens_2019/providers/playlist.dart';


import 'package:provider/provider.dart';class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  getPlayList(BuildContext context){
    Provider.of<PlayList>(context).getPlayList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Partify'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: VoteList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => getPlayList(context),
      ),
    );
  }
}
