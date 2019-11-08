import 'package:conferens_2019/models/track.dart';
import 'package:flutter/material.dart';
import 'package:conferens_2019/models/data.dart';

class SearchList with ChangeNotifier {
  List<Track> _dataItems = [
    Track(
      id: '00vhlwuuzdaNU9RhvtNX3r',
      artist: 'Lindemann',
      name: 'Knebel',
      imageUrl:
          'https://i.scdn.co/image/b425732f4ad7e79f15a77f150132d26a9cab32e7',
      rating: 3,
    )
  ];

  List<Track> get dataItems {
    return [..._dataItems];
  }
}
