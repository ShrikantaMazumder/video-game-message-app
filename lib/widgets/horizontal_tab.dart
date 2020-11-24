import 'package:flutter/material.dart';
import 'package:video_game_messanger_app/model/forum.dart';
import 'package:video_game_messanger_app/styleguide/text_styles.dart';
import 'package:video_game_messanger_app/widgets/TabText.dart';
import 'package:video_game_messanger_app/widgets/forum_card.dart';

// ignore: must_be_immutable
class HorizontalTabLayout extends StatefulWidget {
  @override
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout> {
  var selectedTabIndex = 0;

  onTabTap (int indexNum) {
    setState(() {
      selectedTabIndex = indexNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      child: Stack(
        children: [
          Positioned(
            left: -10,
            bottom: 0,
            top: 0,
            width: 110.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabText(
                    text: "Media",
                    isSelected: selectedTabIndex == 0,
                    onTabTap: () {
                      onTabTap(0);
                    },
                  ),
                  TabText(
                    text: "Streamers",
                    isSelected: selectedTabIndex == 1,
                    onTabTap: () {
                      onTabTap(1);
                    },
                  ),
                  TabText(
                    text: "Forum",
                    isSelected: selectedTabIndex == 2,
                    onTabTap: () {
                      onTabTap(2);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65.0,),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ForumCard(forum: fortniteForum,),
                ForumCard(forum: pubgForum,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
