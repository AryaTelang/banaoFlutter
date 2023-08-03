import 'dart:convert';

import 'package:banaofluttertask1/BottomNavBar/BottomNav.dart';
import 'package:banaofluttertask1/BottomNavBar/Chat.dart';
import 'package:banaofluttertask1/BottomNavBar/Hub.dart';
import 'package:banaofluttertask1/BottomNavBar/Learn.dart';
import 'package:banaofluttertask1/BottomNavBar/Profile.dart';
import 'package:banaofluttertask1/Constants.dart';
import 'package:banaofluttertask1/LessonsForYou/LessonListBuilder.dart';
import 'package:banaofluttertask1/TopGrid.dart';
import 'package:banaofluttertask1/getResp.dart';
import 'package:banaofluttertask1/programsForYou/ProgramModel.dart';
import 'package:banaofluttertask1/programsForYou/ProgramsListBuild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

String strRes = "";
Map<dynamic, dynamic> mapRes = {};

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProgramModel> items = [];
  Future getData() async {

    var resp =
    await callAPI().getFun('/programs').catchError((err) {});
    if (resp == null) return;
    debugPrint("Successful");
    final Map<String, dynamic> jsonData = jsonDecode(resp);
    List items = jsonData['items'];
  }
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 56,
        elevation: 0,
        backgroundColor: Color(0xffEEF3FD),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Color(0xff939CA3),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message, color: Color(0xff939CA3)),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_outlined,
                color: Color(0xff939CA3)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xffEEF3FD),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "Hello, Priya!",
                          style: GoogleFonts.lora(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, top: 5),
                        child: Text(
                          "What do you wanna learn today?",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  TopPart(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15, bottom: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Programs for you",
                                    style: GoogleFonts.lora(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Spacer(),
                                  Text(
                                    "View all",
                                    style: GoogleFonts.inter(
                                        color: Color(0xff6D747A),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xff6D747A),
                                      size: 16,
                                    ),
                                  )
                                ],
                              ),
                            )),
                        ProgramsTest(),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15, bottom: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Events and experiences",
                                    style: GoogleFonts.lora(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Spacer(),
                                  Text(
                                    "View all",
                                    style: GoogleFonts.inter(
                                        color: Color(0xff6D747A),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xff6D747A),
                                      size: 16,
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                            height: 280,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 5,
                              padding: const EdgeInsets.all(8),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(right: 15),
                                  child: Container(
                                    width: 242,
                                    height: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 2.0,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(16),
                                                topRight: Radius.circular(16)),
                                            child: Image.asset(
                                              "assets/images/yog.jpg",
                                              fit: BoxFit.fill,
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "BABYCARE",
                                              style: GoogleFonts.inter(
                                                fontSize: 16,
                                                color: fontColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Understanding of human behaviour",
                                              style: GoogleFonts.inter(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Row(
                                              children: [
                                                Text(
                                                  "13 Feb , Sunday",
                                                  style: GoogleFonts.inter(
                                                    fontSize: 12,
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Spacer(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    style: ButtonStyle(
                                                      side:
                                                          MaterialStateProperty
                                                              .all(
                                                        BorderSide(
                                                            color: fontColor,
                                                            width: 1.0),
                                                      ),
                                                      shape:
                                                          MaterialStateProperty
                                                              .all(
                                                        RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100.0),
                                                        ),
                                                      ),
                                                      minimumSize:
                                                          MaterialStateProperty
                                                              .all(
                                                                  Size(60, 10)),
                                                    ),
                                                    child: Text(
                                                      'Book',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: fontColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            )),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15, top: 15),
                              child: Row(
                                children: [
                                  Text(
                                    "Lessons for you",
                                    style: GoogleFonts.lora(
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Spacer(),
                                  Text(
                                    "View all",
                                    style: GoogleFonts.inter(
                                        color: Color(0xff6D747A),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xff6D747A),
                                      size: 16,
                                    ),
                                  )
                                ],
                              ),
                            )),
                       LessonList(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),

    );
  }
}
