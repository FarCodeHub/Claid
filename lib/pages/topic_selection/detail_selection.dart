import 'package:claidflutter/components/AimLesson.dart';
import 'package:claidflutter/components/Chips.dart';
import 'package:claidflutter/components/DescriptionChips.dart';
import 'package:claidflutter/models/AimModel.dart';
import 'package:claidflutter/models/DetailModel.dart';
import 'package:claidflutter/models/LessonModel.dart';
import 'package:claidflutter/pages/topic_selection/class_selection.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class DetailSelection extends StatefulWidget {
  LessonModel item;
  DetailModel detail;

  DetailSelection(this.item, this.detail);

  @override
  _DetailSelectionState createState() => _DetailSelectionState();
}

class _DetailSelectionState extends State<DetailSelection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Wrap(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10, bottom: 10, top: 2),
                              child: Container(
                                height: size.height * 0.30,
                                width: size.width,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        spreadRadius: 2,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(widget.detail.Url))),
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                elevation: 4,
                                child: Container(
                                  height: size.height * 0.13,
                                  width: size.width,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: size.width * 0.2,
                                                height: size.height * 0.1,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: NetworkImage(
                                                          widget
                                                              .item.Image)),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  widget.item.Title,
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 8.0),
                                                      child: Icon(
                                                        Icons.import_contacts,
                                                        color:
                                                            kPrimaryLightColor,
                                                      ),
                                                    ),
                                                    Text(
                                                      "???????? ?????????????? ?????????? ?????????? ????????????",
                                                      style: TextStyle(
                                                          color: kPrimaryColor,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                            bottom: 90,
                            left: 40,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26.withOpacity(0.8),
                                    offset: Offset(0, 2),
                                    spreadRadius: 1,
                                    blurRadius: 30.0,
                                    // changes position of shadow
                                  ),
                                ],
                              ),
                              child: InkWell(
                                child: FlutterChips(
                                    "???????? ??????", Colors.blue, Icons.play_arrow),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ClassSelection(
                                            widget.item, widget.detail)),
                                  );
                                },
                              ),
                            )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        elevation: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          width: size.width,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(30),
                                          bottomRight: Radius.circular(30)),
                                      color: kPrimaryMediumColor,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0,
                                          bottom: 8.0,
                                          right: 60,
                                          left: 60),
                                      child: Text(
                                        "?????????????? ??????",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text(
                                    " ?????? (???????? ?????????????? ?????????? ?????????? ???? ??????) ???????? ?????? ?????????????? ???? ?????????? ???? ?????? ?? ???? ???????? ???????? ???? ?????????? ???? ?????????? ???? ?????????? ?????????? ???? ?????????????? ???? ?????? ?????? ?????????????? ???????? ?? ?????????????? ???? ???????? ?????? ?? ???????????? ???? ???????? ???????? ???????????? ???? ?????? ?????????? ???????????????? ???????? ???????? ?????? ???? ?????????? ??????"),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                                color: kPrimaryMediumColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0, right: 60, left: 60),
                                child: Text(
                                  "?????????? ??????",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              )),
                        ),
                        Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                elevation: 4,
                                child: Container(
                                  height: size.height * 0.25,
                                  width: size.width * 0.45,
                                  child: Wrap(
                                    children: [
                                      AimLesson(
                                          aims[0].TypeAim,
                                          aims[0].Description,
                                          aims[0].background),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                elevation: 4,
                                child: Container(
                                  height: size.height * 0.25,
                                  width: size.width * 0.45,
                                  child: Wrap(
                                    children: [
                                      AimLesson(
                                          aims[1].TypeAim,
                                          aims[1].Description,
                                          aims[1].background),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                elevation: 4,
                                child: Container(
                                  height: size.height * 0.25,
                                  width: size.width * 0.45,
                                  child: Wrap(
                                    children: [
                                      AimLesson(
                                          aims[2].TypeAim,
                                          aims[2].Description,
                                          aims[2].background),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                ),
                                elevation: 4,
                                child: Container(
                                  height: size.height * 0.25,
                                  width: size.width * 0.45,
                                  child: Wrap(
                                    children: [
                                      AimLesson(
                                          aims[3].TypeAim,
                                          aims[3].Description,
                                          aims[3].background),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

List<String> lessonDescription = [
  "?????????? ????????????",
  "?????????? ??????????????",
  "?????????? ???????? ??????????????",
  "?????????????? ???? ??????????????",
  "???????? ?????????? ???????? ????????????"
];
List<AimModel> aims = [
  AimModel(
      "?????? ??????????",
      "???????? ???????? ???? ???? ?????????? ?????? ?????? ???????? ???? ???????????? ???????? ?????? ?????????????? ?????? ?? ?????? ?????? ???? ?????? ???? ???????????? ???? ???????????? ?? ???????????? ???????? ???? ?????????? ??????",
      Colors.red[400]),
  AimModel(
      "?????? ??????????",
      "???????? ???????? ???????? ???????????? ???????????????? ???? ???????????? ?????? ???? ?????? ?????? ?????????????? ?????? ?? ?????????????? ?????? ???? ?????? ????????",
      Colors.red[400]),
  AimModel(
      "?????? ????????????",
      "???????? ???????? ???????? ???????????? ???????????????? ???? ???????????? ?????? ???? ?????? ?????? ?????????????? ?????? ?? ?????????????? ?????? ???? ?????? ????????",
      Colors.amber),
  AimModel(
      "?????? ????????????",
      "???????? ???????? ???????? ???????????? ?????? ?????? ?????????????? ?????????????? ?????????? ??????????",
      Colors.amber[400])
];
