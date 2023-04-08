import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orin/Pages/Lyrics_page.dart';
import 'package:orin/constants.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key? key}) : super(key: key);

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    var _value = 40.0;
    return Scaffold(
      backgroundColor: Color(0xFFFEF7EB),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Color(0XFF8D0636),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 270,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(
                  songPictures[1],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                'Back To You',
                style: backtoyou,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TAEMIN',
                  style: TextStyle(
                    color: Color(0xFFC71B45),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'NotoSans',
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Icon(
                    CupertinoIcons.ellipsis_vertical,
                  ),
                ),
              ],
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
            ),
            child: Slider(
              min: 0,
              max: 100,
              value: _value,
              activeColor: Color(0xFFC71B45),
              inactiveColor: Color(0xFF79797B),
              onChanged: (Value) {
                setState(() {
                  _value = Value;
                });
              },
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  CupertinoIcons.backward_fill,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  CupertinoIcons.pause_fill,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  CupertinoIcons.forward_fill,
                  color: Colors.black,
                  size: 40,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return LyricsPage();
                    }),
                  );
                },
                icon: (Icon(
                  Icons.lyrics_outlined,
                  size: 30,
                  color: Color(0XFF79797B),
                )),
              ),
              SizedBox(
                width: 50,
              ),
              Icon(
                Icons.queue_music,
                size: 30,
                color: Color(0XFF79797B),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 80,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Color(0xFF8E0636),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home,
                          size: 35,
                          color: Color(0xFFFBD68B),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(color: Color(0xFFFBD68B)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search,
                            size: 35, color: Color(0xFF919194)),
                      ),
                      Text(
                        'Search',
                        style: labelStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.explore_outlined,
                            size: 35, color: Color(0xFF919194)),
                      ),
                      Text(
                        'Explore',
                        style: labelStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.profile_circled,
                            size: 35, color: Color(0xFF919194)),
                      ),
                      Text(
                        'You',
                        style: labelStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
