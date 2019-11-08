import 'package:conferens_2019/models/track.dart';
import 'package:flutter/material.dart';
import 'package:conferens_2019/models/data.dart';

class PlayList with ChangeNotifier {
  List<Track> _dataItems = [
    Track(
      id: '00vhlwuuzdaNU9RhvtNX3r',
      artist: 'Lindemann',
      name: 'Knebel',
      imageUrl: 'https://i.scdn.co/image/b425732f4ad7e79f15a77f150132d26a9cab32e7',
      rating: 3,
    ),
    Track(
      id: '2ye2Wgw4gimLv2eAKyk1NB',
      artist: 'Metallica',
      name: 'Fade to black',
      imageUrl: 'https://i.scdn.co/image/3752abc0e1df107b6488812db00bea88eff1e206',
      rating: 2,
    ),
    Track(
      id: '48UPSzbZjgc449aqz8bxox',
      artist: 'Red hot chili peppers',
      name: 'Californication',
      imageUrl: 'https://i.scdn.co/image/ab67616d00001e0294d08ab63e57b0cae74e8595',
      rating: -1,
    ),
    Track(
      id: '4vNubpqegNIinvniOlniEF',
      artist: 'Coola kids',
      name: 'Grillkrydda',
      imageUrl: 'https://i.scdn.co/image/ab67616d00001e02561668f9254af4354f50acac',
      rating: 0,
    ),
  ];

  List<Track> get dataItems {
    return [..._dataItems];
  }
}
