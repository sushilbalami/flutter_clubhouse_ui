import 'package:clubhouse/data/roomListData.dart';
import 'package:clubhouse/screens/room/room.dart';
import 'package:clubhouse/widgets/appBar.dart';
import 'package:clubhouse/widgets/profileImage.dart';
import 'package:clubhouse/widgets/roomListCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(
            CupertinoIcons.search,
          ),
        ),
        title: "",
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.envelope_open,
              size: 26,
            ),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.calendar_today,
              size: 30,
            ),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell,
              size: 30,
            ),
            onPressed: () => {},
          ),
          ProfileIcon(),
        ],
      ),
      body: Stack(
        children: [
          Scrollbar(
            child: ListView.builder(
              itemCount: roomListData.length,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(20, 2, 20, 0),
              itemBuilder: (context, index) {
                return RoomCard(
                  onClick: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Room()),
                  ),
                  data: roomListData[index],
                );
              },
            ),
          ),
          Positioned(
            bottom: 20,
            child: Container(
              width: size.width,
              padding:
                  EdgeInsets.fromLTRB(size.width * 0.2, 0, size.width * 0.2, 0),
              child: FloatingActionButton.extended(
                backgroundColor: Color(0xff28AE5F),
                onPressed: () => {},
                elevation: 0,
                hoverElevation: 0,
                focusElevation: 2,
                highlightElevation: 2,
                icon: Icon(
                  CupertinoIcons.plus,
                ),
                label: Text(
                  "Start a Room",
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
