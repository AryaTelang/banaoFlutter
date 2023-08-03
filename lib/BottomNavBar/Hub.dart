import 'package:flutter/cupertino.dart';

class HubPage extends StatefulWidget {
  const HubPage({Key? key}) : super(key: key);

  @override
  State<HubPage> createState() => _HubPageState();
}

class _HubPageState extends State<HubPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:CupertinoColors.white,
      child: Center(
        child: Text("Hub",style: TextStyle(fontSize: 60),),
      ),
    );
  }
}
