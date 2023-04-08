import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Reusables/Song_Model.dart';

const icon = Icon(CupertinoIcons.ellipsis_vertical);
const mylibrary = TextStyle(
  color: Color(0xFF8D0636),
  fontWeight: FontWeight.bold,
  fontSize: 24,
  fontFamily: 'NotoSans',
);
const musicStuff = TextStyle(
  color: Colors.black,
  fontSize: 16,
  fontFamily: 'NotoSans',
  fontWeight: FontWeight.bold,
);
const backtoyouStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontFamily: 'NotoSans',
  fontSize: 16,
);
const backtoyou = TextStyle(
  fontWeight: FontWeight.w500,
  fontFamily: 'NotoSans',
  fontSize: 20,
);
const labelStyle = TextStyle(
  color: Color(0xFF919194),
);
List songPictures = [
  'https://yt3.ggpht.com/FyPdGJLvCd1hzyBtk_aaXAzO1WHTNzptmKWiuv7RNe4EFQGsRn_FMNiVNvtaoJ0pk00NEhBlHQ=s900-c-k-c0x00ffffff-no-rj',
  'https://i2.wp.com/thesillytv.com/wp-content/uploads/2021/09/Untitled-design-11.jpg?w=1280&ssl=1',
  'https://assets.audiomack.com/dan-d-kesh/3cb3a3be0f24df5e55d39dd0b5509306bf013afcac42469769f05c0eadc0933a.jpeg?width=1000&height=1000&max=true',
  'https://i.scdn.co/image/ab67616d0000b27330f41c256dd7f0adc8561164',
];
List<String> songTitle = ['Matsuri', 'Back To You', 'Hustle', 'New Smoke'];
List<String> artistNames = ['Fuji Kaze', 'TAEMIN', 'Dan D Kesh', 'Dan D Kesh'];
const titleStyle = TextStyle(
    fontWeight: FontWeight.bold, fontFamily: 'NotoSans', fontSize: 14);
const artistStyle = TextStyle(
    color: Color(0xFF919194), fontSize: 13, fontWeight: FontWeight.w500);
const songsStyle = TextStyle(
  color: Color(0xFF8D0636),
  fontWeight: FontWeight.bold,
  fontSize: 20,
  fontFamily: 'NotoSans',
);

const playmusicStyle = TextStyle(
    fontWeight: FontWeight.w600, fontFamily: 'NotoSans', color: Colors.white);
List songList = [
  SongModel(
    'https://i.pinimg.com/564x/c1/3b/84/c13b8493794c84743dc34bdba8cce1a6.jpg',
    'abcdfu',
    'Gayle',
    icon,
  ),
  SongModel(
      'https://i.pinimg.com/474x/7f/a4/32/7fa432125a3bc44a2e8fdc47a531ba6a.jpg',
      'Advice',
      'TAEMIN',
      icon),
  SongModel('https://i.scdn.co/image/ab67616d00001e02b308df04ba9683e0cceece37',
      'A little More', 'Alessia Cara ', icon),
  SongModel(
      'https://i.pinimg.com/474x/c0/f6/69/c0f669eb8dd71dde7bd3381d6322fe7a.jpg',
      'A day without me',
      'U2',
      icon),
  SongModel(
      'https://i.pinimg.com/474x/50/c9/d5/50c9d5810905c4956c8a6f70114a2026.jpg',
      'A Head Full Of Dreams',
      'Cold Play',
      icon),
  SongModel(
      'https://i.pinimg.com/474x/34/d5/57/34d557be572c130afbd5f48dbc3b0d51.jpg',
      'Against all odds',
      'Phil Collins',
      icon),
  SongModel(
      'https://i.pinimg.com/474x/d7/f5/af/d7f5afb6bf49057a0896b5775adab378.jpg',
      "A winter's tale",
      'Queen',
      icon),
  SongModel(
      'http://bravewords.com/medias-static/images/news/2015/55CCA1EF-bon-jovi-a-teardrop-to-the-sea-lyric-video-streaming-image.jpg',
      'A Teardrop to the Sea',
      'Bon Jovi',
      icon),
  SongModel(
      'https://i.pinimg.com/474x/d4/8d/12/d48d12498216ff1e630bb7d02f48a0f5.jpg',
      "A Woman's Worth",
      'Alicia Keys',
      icon),
  SongModel('https://www.popsike.ch/pix/20130604/281117023216.jpg',
      'A New Machine', 'Pink Floyd', icon),
  SongModel(
      'https://i.discogs.com/4GMGuGtcX3An7ecdahQpXrDgiklyS9Z_vmEdLGaRVGc/rs:fit/g:sm/q:90/h:594/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTEzMzA5/NjgtMTY0NjE2Mzgz/OC04OTc4LmpwZWc.jpeg',
      'A Thousand Miles',
      'Vanessa Carlton ',
      icon),
];
const singerStyle = TextStyle(
    fontFamily: 'NotoSans', fontWeight: FontWeight.w600, fontSize: 15);
const title = TextStyle(
  fontFamily: 'NotoSans',
  fontWeight: FontWeight.w600,
  fontSize: 12,
  color: Color(0xFFC71B45),
);
