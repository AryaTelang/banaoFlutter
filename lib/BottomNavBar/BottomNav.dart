import 'package:banaofluttertask1/BottomNavBar/Chat.dart';
import 'package:banaofluttertask1/BottomNavBar/Hub.dart';
import 'package:banaofluttertask1/BottomNavBar/Learn.dart';
import 'package:banaofluttertask1/BottomNavBar/Profile.dart';
import 'package:banaofluttertask1/Constants.dart';
import 'package:banaofluttertask1/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex=0;
    return  BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: (index) {
    setState(() {
    _currentIndex = index;

    if (_currentIndex == 0) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HomePage()));
    }
    if (_currentIndex == 1) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LearnPage()));
    }

    if (_currentIndex == 2) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => HubPage()));
    }
    if (_currentIndex == 3) {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const ChatPage()));
    }
    if (_currentIndex == 4) {
    Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => const ProfilePage()));
    }
    });
    },
    selectedItemColor: fontColor,
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedFontSize: 18,
    unselectedFontSize: 14,
    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
    icon: Icon(Icons.access_time),
    label: 'Home',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.book_rounded),
    label: 'Learn',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.dashboard_customize_outlined),
    label: 'Hub',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.message),
    label: 'Chat',
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Profile',
    ),
    ],
    );
  }
}
