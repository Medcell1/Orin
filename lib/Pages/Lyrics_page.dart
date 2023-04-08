import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LyricsPage extends StatelessWidget {
  const LyricsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_sharp),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      songPictures[1],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Back To You',
                    style: backtoyou.copyWith(fontSize: 14),
                  ),
                  Text(
                    'TAEMIN',
                    style: TextStyle(
                      color: Color(0xFFC71B45),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'NotoSans',
                    ),
                  ),
                ],
              ),
              Spacer(),
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
              SizedBox(
                width: 15,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 81,
                    child: Text(
                      '아무것도 아니었지, yeah네가 나를 안아주기,전까진꽤 괜찮은 놈이라는 걸너로인해 조금씩 알게 됐어',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 90,
                    child: Text(
                      '근데 이건 몰랐던 거지이별 뒤의노랫말들이이렇게도 참기 힘든고통인지',
                      style: TextStyle(
                        color: Color(0xFFC71B45),
                        fontFamily: 'NotoSans',
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 108,
                    child: Text(
                      '넌 내가 꾸던 꿈 woo woo-내가 쉬던 숨 woo woo-보고 듣고 느끼고 믿었던 세상이 사라져What I can do, to get back to you?',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 27,
                    child: Text(
                      'Back to you, yeah',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 135,
                    child: Text(
                      '늦기 전에 돌아갈게나를 위해 조금만 열어둘래Oh,\n네가 없는 밤은 너무 길어기약 없는 약속이란\n 싫어다정한 그 입술로 날 깨워, 늘\n그랬듯 (woah, woah)',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 54,
                    child: Text(
                      '뒤척이고 뒤척이겠지그리움과 괴로움\n사일어디도 난 속할 수가 없을 테니',
                      style: TextStyle(
                        fontFamily: 'NotoSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
