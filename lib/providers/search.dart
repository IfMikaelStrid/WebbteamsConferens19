import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:conferens_2019/models/track.dart';

class SearchList with ChangeNotifier {
  List<Track> _dataItems = [];
  final String _baseUrl = 'http://xlent-party.azurewebsites.net/api';
  List<Track> get dataItems {
    return [..._dataItems];
  }

  Future<void> search(query) {
    _dataItems = [];
    var url = '$_baseUrl/tracks/$query';
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

  Future<void> addSongToPlaylist(songId) {
    var url = '$_baseUrl/playlist/$songId';
    return http.post(
      url,
    ).then((response) {
      print(response.body);
    });
  }
}
