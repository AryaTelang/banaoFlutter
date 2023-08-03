import 'dart:convert';
import 'package:banaofluttertask1/Constants.dart';
import 'package:banaofluttertask1/getResp.dart';
import 'package:banaofluttertask1/programsForYou/ProgramModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LessonList extends StatefulWidget {
  const LessonList({Key? key}) : super(key: key);

  @override
  State<LessonList> createState() => _LessonListState();
}

class _LessonListState extends State<LessonList> {
  List<ProgramModel> itemsList = [];
  Future getData() async {
    var resp = await callAPI().getFun('/lessons').catchError((err) {});
    if (resp == null) return;
    final Map<String, dynamic> jsonData = jsonDecode(resp);
    List items = jsonData['items'];
    print(items.length);
    return items;
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: SnackBar(
                content: Text(
                  snapshot.error.toString(),
                  style: TextStyle(letterSpacing: 1.5),
                ),
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.redAccent,
              ),
            );
          } else {
            var itemObj = snapshot.data;

            return SizedBox(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: itemObj.length,
                  padding: const EdgeInsets.all(10),
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
                              blurRadius: 2,
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
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  itemObj[index]['category'],
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    color: fontColor,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  itemObj[index]['name'],
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 20, bottom: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "${itemObj[index]['duration']} min",
                                      style: GoogleFonts.inter(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Spacer(),
                                !itemObj[index]['locked']
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.lock,
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.lock_open,
                                          size: 20,
                                          color: Colors.grey,
                                        ),
                                      )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ));
          }
        });
  }
}
