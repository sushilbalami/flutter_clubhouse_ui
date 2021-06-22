import 'package:clubhouse/data/roomListData.dart';
import 'package:clubhouse/screens/profile/profile.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => Profile(),
          ),
        ),
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 18, 0),
        padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: ExtendedImage.network(
          roomListData[0]['images'][0],
          width: 40,
          fit: BoxFit.cover,
          shape: BoxShape.circle,
          cache: true,
          borderRadius: BorderRadius.circular(
            16.0,
          ),
          //cancelToken: cancellationToken,
        ),
      ),
    );
  }
}
