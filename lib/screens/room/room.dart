import 'package:auto_animated/auto_animated.dart';
import 'package:clubhouse/data/roomListData.dart';
import 'package:clubhouse/widgets/appBar.dart';
import 'package:clubhouse/widgets/profileImage.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Room extends StatefulWidget {
  const Room({Key? key}) : super(key: key);

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

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
            MaterialIcons.keyboard_arrow_down,
          ),
        ),
        title: "Hallway",
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(
              CupertinoIcons.doc,
              size: 30,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ProfileIcon(),
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
            padding: EdgeInsets.fromLTRB(5, 18, 5, 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0),
              ),
            ),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              // padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  sliver: LiveSliverGrid(
                    controller: _scrollController,
                    // delay: Duration(milliseconds: 250) * 5,
                    showItemInterval: Duration(milliseconds: 150),
                    showItemDuration: Duration(milliseconds: 200),
                    itemCount: roomData['speakers'].length,
                    itemBuilder: animationItemBuilder(
                      (index) => HorizontalItem(
                        image: roomData['speakers'][index]['image'],
                        name: roomData['speakers'][index]['name'],
                        isMod: roomData['speakers'][index]['isMod'],
                      ),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.08, vertical: 16),
                      child: Row(
                        children: [
                          Text(
                            "Followed by Speakers",
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontSize: 16,
                                      color: Color(0xff7f7f7f),
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  sliver: LiveSliverGrid(
                    controller: _scrollController,
                    // delay: Duration(milliseconds: 250) * 5,
                    showItemInterval: Duration(milliseconds: 150),
                    showItemDuration: Duration(milliseconds: 200),
                    itemCount: roomData['followedBySpeakers'].length,
                    itemBuilder: animationItemBuilder(
                      (index) => HorizontalItem(
                        image: roomData['followedBySpeakers'][index]['image'],
                        name: roomData['followedBySpeakers'][index]['name'],
                        isMod: false,
                      ),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.08, vertical: 16),
                      child: Row(
                        children: [
                          Text(
                            "Others in the Room",
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      fontSize: 16,
                                      color: Color(0xff7f7f7f),
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SliverPadding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  sliver: LiveSliverGrid(
                    controller: _scrollController,
                    // delay: Duration(milliseconds: 250) * 5,
                    showItemInterval: Duration(milliseconds: 150),
                    showItemDuration: Duration(milliseconds: 200),
                    itemCount: roomData['listeners'].length,
                    itemBuilder: animationItemBuilder(
                      (index) => HorizontalItem(
                        image: roomData['listeners'][index]['image'],
                        name: roomData['listeners'][index]['name'],
                        isMod: false,
                      ),
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0),
                ),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 6,
              ),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () => {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xffF1F2F4),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 2, 4, 2),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/images/peace.svg",
                            width: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Leave quietly",
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: Colors.red,
                                      fontSize: 17,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: size.width * 0.35,
                    margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffF1F2F4),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            CupertinoIcons.add,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xffF1F2F4),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            CupertinoIcons.hand_raised,
                            color: Color(0xff4E4E4E),
                          ),
                        ),
                      ],
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

  Widget Function(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) animationItemBuilder(
    Widget Function(int index) child, {
    EdgeInsets padding = EdgeInsets.zero,
  }) =>
      (
        BuildContext context,
        int index,
        Animation<double> animation,
      ) =>
          FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(0, -0.1),
                end: Offset.zero,
              ).animate(animation),
              child: Padding(
                padding: padding,
                child: child(index),
              ),
            ),
          );
}

class HorizontalItem extends StatelessWidget {
  const HorizontalItem({
    required this.name,
    required this.image,
    required this.isMod,
  });

  final String name;
  final String image;
  final bool isMod;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Container(
            child: AdvancedAvatar(
              size: 80,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontSize: 0,
                  ),
              decoration: BoxDecoration(
                color: Color(0xffE0E0E0),
                borderRadius: BorderRadius.circular(34),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExtendedNetworkImageProvider(
                    image,
                    cache: true,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Row(
                  children: [
                    isMod
                        ? Expanded(
                            flex: 7,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 4, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      FontAwesome5Solid.star_of_life,
                                      size: 8,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : SizedBox(),
                    Expanded(
                      flex: 10,
                      child: Text(
                        name,
                        style: Theme.of(context).textTheme.subtitle2!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        textAlign: isMod ? TextAlign.left : TextAlign.center,
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
