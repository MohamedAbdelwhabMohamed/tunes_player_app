import 'package:flutter/material.dart';
import 'package:tunes_player_app/model/tunes_model.dart';
import 'package:tunes_player_app/widgets/tunes_items.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  final List<TunesModel> tunesList = const [
    TunesModel(color: Colors.red, sound: 'note1.wav'),
    TunesModel(color: Colors.green, sound: 'note2.wav'),
    TunesModel(color: Colors.blue, sound: 'note3.wav'),
    TunesModel(color: Colors.yellow, sound: 'note4.wav'),
    TunesModel(color: Colors.purple, sound: 'note5.wav'),
    TunesModel(color: Colors.pink, sound: 'note6.wav'),
    TunesModel(color: Colors.orange, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Tunes Player',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: tunesList
            .map(
              (e) => TunesItems(
                tunesModel: e,
              ),
            )
            .toList(),
      ),

      // List<TuneItems> getTuneItems() {
      //   List<TuneItems> item = [];
      //   for (var color in TuneColors) {
      //     item.add(TuneItems(color: color));
      //   }
      //   return item;
      // }
    );
  }
}
