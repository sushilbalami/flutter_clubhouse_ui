import 'dart:math';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icomoon_icons/flutter_icomoon_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class RoomCard extends StatelessWidget {
  final data;
  final VoidCallback onClick;
  const RoomCard({Key? key, this.data, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onClick,
      child: Card(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            14.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      data['club'].toUpperCase(),
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                  Icon(
                    IcoMoonIcons.home3,
                    color: Color(0xff34A061),
                    size: 14,
                  )
                ],
              ),
              Container(
                width: size.width,
                child: Text(
                  data['title'],
                  style: GoogleFonts.nunito(
                    color: Color(0xff535353),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  constraints: BoxConstraints(
                    minHeight: size.height * 0.15,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              width: size.width,
                              height: size.height * 0.1,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: List.generate(
                                  data['images'].length,
                                  (index) => Positioned(
                                    top: (15 * index).toDouble(),
                                    left: (35 * index).toDouble(),
                                    child: ExtendedImage.network(
                                      data['images'][index],
                                      width: size.width * 0.15,
                                      height: size.width * 0.15,
                                      fit: BoxFit.cover,
                                      shape: BoxShape.rectangle,
                                      cache: true,
                                      borderRadius: BorderRadius.circular(
                                        24.0,
                                      ),
                                      //cancelToken: cancellationToken,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  data['users'].length,
                                  (index) => Row(
                                    children: [
                                      Text(
                                        data['users'][index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2!
                                            .copyWith(
                                              fontSize: 18,
                                            ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        CupertinoIcons.chat_bubble_text,
                                        color: Color(0xffb7b7b7),
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                              child: _totalContainer(),
                            ),
                          )
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _totalContainer() {
    double _size = 16;
    Color _color = Color(0xffA2A2A2);
    var _font = GoogleFonts.nunito(
      fontWeight: FontWeight.bold,
      fontSize: _size,
      color: Color(
        0xffA2A2A2,
      ),
    );
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
          child: Text(
            new Random().nextInt(150).toString(),
            style: _font,
          ),
        ),
        Icon(
          IcoMoonIcons.user,
          size: _size,
          color: _color,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
          child: Text(
            "/",
            style: _font,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 2, 0),
          child: Text(
            new Random().nextInt(50).toString(),
            style: _font,
          ),
        ),
        Icon(
          IcoMoonIcons.bubble,
          size: _size,
          color: _color,
        ),
      ],
    );
  }
}
