import 'package:flutter/material.dart';
import 'package:video_game_messanger_app/model/forum.dart';

import 'forum_name.dart';

class ForumCard extends StatelessWidget {
  final Forum forum;
  ForumCard({this.forum});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280.0,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 80.0),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Stack(
            children: [
              Image.asset(
                forum.imagePath,
                fit: BoxFit.fitWidth,
              ),
              ForumName(forum),
            ],
          ),
        ),
      ),
    );
  }
}
