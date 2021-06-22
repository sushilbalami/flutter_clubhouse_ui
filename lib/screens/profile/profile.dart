import 'package:clubhouse/data/roomListData.dart';
import 'package:clubhouse/widgets/appBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:flutter_icomoon_icons/flutter_icomoon_icons.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => {
            Navigator.of(context).pop(),
          },
          icon: Icon(
            CupertinoIcons.chevron_back,
          ),
        ),
        title: "",
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(
              AntDesign.sharealt,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Feather.settings,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        children: [
          Row(
            children: [
              Container(
                child: AdvancedAvatar(
                  size: 100,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 34,
                      ),
                  name: 'Sushil Balami',
                  decoration: BoxDecoration(
                    color: Color(0xffE0E0E0),
                    borderRadius: BorderRadius.circular(44),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sushil Balami",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 16,
                      ),
                ),
                Text(
                  "@sushilbalami",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 16,
                        letterSpacing: 0,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "15",
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 16,
                          ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "followers",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 16,
                            letterSpacing: 0,
                          ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "36",
                      style: Theme.of(context).textTheme.subtitle2!.copyWith(
                            fontSize: 16,
                          ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "following",
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 16,
                            letterSpacing: 0,
                          ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                width: size.width,
                child: Text(
                  "The Technology you are using now that could be created by me on future.\nProfessional Developer to Be. Active Freelancer Bachelor's in Computer Application\nWay to Spiritual Journey\nhttps://sushilbalami.com.np",
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 0,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () => {},
                      icon: Icon(
                        IcoMoonIcons.twitter,
                        color: Color(0xff5B78AB),
                        size: 18,
                      ),
                      label: Text(
                        "Add Twitter",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 16,
                              letterSpacing: 0,
                              color: Color(0xff5B78AB),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    TextButton.icon(
                      onPressed: () => {},
                      icon: Icon(
                        Feather.instagram,
                        color: Color(0xff5B78AB),
                        size: 18,
                      ),
                      label: Text(
                        "Add Instagram",
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 16,
                              letterSpacing: 0,
                              color: Color(0xff5B78AB),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                child: AdvancedAvatar(
                  size: 50,
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 18,
                      ),
                  name: 'Kim Yunz',
                  decoration: BoxDecoration(
                    color: Color(0xffE0E0E0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joined 31 May, 2021",
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              fontSize: 16,
                              letterSpacing: 0,
                            ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Nominated by ",
                            style:
                                Theme.of(context).textTheme.subtitle1!.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0,
                                    ),
                          ),
                          Text(
                            "Kim Yunz",
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0,
                                    ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            "Member of",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 18,
                  letterSpacing: 0,
                ),
          ),
          SizedBox(
            height: 8,
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: List.generate(
              clubListData.length,
              (index) => AdvancedAvatar(
                size: 50,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      fontSize: 18,
                    ),
                name: clubListData[index],
                decoration: BoxDecoration(
                  color: Color(0xffE0E0E0),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
