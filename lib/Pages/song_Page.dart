import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orin/Pages/music_page.dart';

import '../constants.dart';

class SongPage extends StatefulWidget {
  const SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEF7EB),
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Color(0XFF8D0636),
                ),
              ),
              SizedBox(
                width: 27,
              ),
              Text(
                'Songs',
                style: songsStyle,
              ),
              Spacer(),
              Icon(
                CupertinoIcons.ellipsis_vertical,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFC71B45),
                  borderRadius: BorderRadius.circular(14),
                ),
                height: 39,
                width: 96,
                child: Center(
                  child: Text(
                    'Play Music',
                    style: playmusicStyle,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFC71B45),
                  borderRadius: BorderRadius.circular(14),
                ),
                height: 39,
                width: 96,
                child: Center(
                  child: Text(
                    'Shuffle',
                    style: playmusicStyle,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 49,
                height: 39,
                decoration: BoxDecoration(
                  color: Color(0xFFC71B45),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Color(0xFFFBD68B),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'A',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    fontFamily: 'NotoSans'),
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: double.maxFinite,
              height: double.maxFinite,
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: songList.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return ListTile(
                    title: Text(
                      songList[index].songTitle!,
                      style: singerStyle,
                    ),
                    subtitle: Text(
                      '${songList[index].artistName!}',
                      style: title,
                    ),
                    trailing: songList[index].icon!,
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.network(
                        songList[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          bottomNavigation(),
        ],
      ),
    );
  }

  Widget bottomNavigation() {
    return Column(
      children: [
        Container(
          height: 155,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7),
              topRight: Radius.circular(7),
            ),
            color: Color(0xFFC71B45),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: NetworkImage(
                            songPictures[1],
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MusicPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Back To You',
                      style: backtoyouStyle,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.pause_fill,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(
                    CupertinoIcons.forward_fill,
                    color: Colors.white,
                    size: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  color: Color(0xFF8E0636),
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
        ),
        // Container(
        //   height: 80,
        //   width: double.maxFinite,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(5),
        //     ),
        //     color: Color(0xFF8E0636),
        //   ),
        //   child: Container(
        //     margin: EdgeInsets.only(left: 20, right: 20),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Column(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(
        //                 Icons.home,
        //                 size: 35,
        //                 color: Color(0xFFFBD68B),
        //               ),
        //             ),
        //             Text(
        //               'Home',
        //               style: TextStyle(color: Color(0xFFFBD68B)),
        //             ),
        //           ],
        //         ),
        //         Column(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(Icons.search,
        //                   size: 35, color: Color(0xFF919194)),
        //             ),
        //             Text(
        //               'Search',
        //               style: labelStyle,
        //             ),
        //           ],
        //         ),
        //         Column(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(Icons.explore_outlined,
        //                   size: 35, color: Color(0xFF919194)),
        //             ),
        //             Text(
        //               'Explore',
        //               style: labelStyle,
        //             ),
        //           ],
        //         ),
        //         Column(
        //           children: [
        //             IconButton(
        //               onPressed: () {},
        //               icon: Icon(CupertinoIcons.profile_circled,
        //                   size: 35, color: Color(0xFF919194)),
        //             ),
        //             Text(
        //               'You',
        //               style: labelStyle,
        //             ),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
