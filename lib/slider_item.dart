import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  final title;
  final desc;
  SliderItem({@required this.title, @required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.red),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, right: 0.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: desc,
                style: TextStyle(height: 1.5),
                // style: DefaultTextStyle.of(context).style,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final sliderlists = [
  SliderItem(
    title: "Browse",
    desc:
        "Listen to unlimited music \nwithout interruptions. Join Spotify now for free",
  ),
  SliderItem(
    title: "Playlist",
    desc: "Listen to playlists made for you.\nListen for free on demand  ",
  ),
  SliderItem(
    title: "Artists",
    desc: "Follow your favorite artists \n with for new songs and album drops",
  )
];
