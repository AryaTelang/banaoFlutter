import 'package:banaofluttertask1/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    int _currentIndex = 0;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 56,
        elevation: 0,
        backgroundColor: bgcolor,
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: bgcolor,
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
                GridView.count(
                  primary: false,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 7,
                  crossAxisCount: 2,
                  childAspectRatio: 3,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.book_rounded,
                              color: fontColor,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Programs",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: fontColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bgcolor,
                        border: Border.all(
                          color: fontColor, // Set the border color
                          width: 1, // Set the border width
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.book_rounded,
                              color: fontColor,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Get help",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: fontColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bgcolor,
                        border: Border.all(
                          color: fontColor, // Set the border color
                          width: 1, // Set the border width
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.book_rounded,
                              color: fontColor,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Learn",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: fontColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bgcolor,
                        border: Border.all(
                          color: fontColor, // Set the border color
                          width: 1, // Set the border width
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.book_rounded,
                              color: fontColor,
                              size: 18,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "DD Tracker",
                              style: GoogleFonts.inter(
                                  fontSize: 20,
                                  color: fontColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: bgcolor,
                        border: Border.all(
                          color: fontColor, // Set the border color
                          width: 1, // Set the border width
                        ),
                      ),
                    ),
                  ],
                ),
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
                            padding: const EdgeInsets.only(left: 15, top: 15),
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
                                      fontWeight: FontWeight.w500,fontSize: 12),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Icon(Icons.arrow_forward,color: Color(0xff6D747A),size: 16,),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;

            if (_currentIndex == 0) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            }
            if (_currentIndex == 2) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            }
            if (_currentIndex == 3) {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            }
          });
        },
        selectedItemColor: fontColor,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedFontSize: 18,
        unselectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
