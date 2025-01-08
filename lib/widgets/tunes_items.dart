import 'package:flutter/material.dart';
import 'package:tunes_player_app/model/tunes_model.dart';

class TunesItems extends StatelessWidget {
  const TunesItems({super.key, required this.tunesModel});
  final TunesModel tunesModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunesModel.playSound();
        },
        child: Container(color: tunesModel.color),
      ),
    );
  }
}
