import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:conferens_2019/models/track.dart';

class PlayList with ChangeNotifier {
  static const url = 'http://xlent-party.azurewebsites.net/api/playlist';
  List<Track> _dataItems = [];

  List<Track> get dataItems {
    return [..._dataItems];
  }

  void upVote(String id) {
    print('+1');
  }

  void downVote(String id) {
    print('-1');
  }

  Future<void> getPlayList() {
    const url = 'http://xlent-party.azurewebsites.net/api/playlist';
    return http.get(url).then((response) {
      var items = (json.decode(response.body) as List).toList();
      for (final item in items) {
        var track = new Track(
          id: item['id'],
          artist: item['artist'],
          imageUrl: item['albumImageUrl'],
          name: item['name'],
          rating: 0,
        );
        _dataItems.add(track);
        notifyListeners();
      }
    });
  }
}
