import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orin/Pages/song_Page.dart';
import 'package:orin/constants.dart';

import '../Reusables/ReusableRow.dart';
import '../Reusables/ReusableText.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF7EB),
      body: SafeArea(
        // top: true,
        minimum: EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 23,
                    ),
                    child: Text(
                      'My Library',
                      style: mylibrary,
                    ),
                  ),
                  // SizedBox(
                  //   width: 30,
                  // ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      CupertinoIcons.ellipsis_vertical,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ReusableRow(
                icon: Icons.playlist_play,
                text: 'Playlist',
                function: () {},
              ),
              SizedBox(
                height: 20,
              ),
              ReusableRow(
                icon: CupertinoIcons.mic,
                text: 'Artist',
                function: () {},
              ),
              SizedBox(
                height: 20,
              ),
              ReusableRow(
                icon: Icons.album_outlined,
                text: 'Playlist',
                function: () {},
              ),
              SizedBox(
                height: 20,
              ),
              ReusableRow(
                icon: Icons.music_note,
                text: 'Songs',
                function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SongPage();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              ReusableRow(
                icon: Icons.favorite_border,
                text: 'Favorite',
                function: () {},
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Recently Played',
                    style: mylibrary,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: songPictures.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 125,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                songPictures[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          text1: songTitle[index],
                          text2: artistNames[index],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
