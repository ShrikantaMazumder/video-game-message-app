import 'package:flutter/material.dart';
import 'package:video_game_messanger_app/widgets/app_background.dart';
import 'package:video_game_messanger_app/widgets/horizontal_tab.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBackground(),
          Center(
            child: HorizontalTabLayout(),
          ),
        ],
      ),
    );
  }
}
