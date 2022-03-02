import 'package:flutter/material.dart';

class MainCartHeader extends StatelessWidget {
  const MainCartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.home),
        Text('Common area'),
        Spacer(),
        TextButton(child: Text('+ CONNECT'), onPressed: () {}),
        TextButton(child: Text('+ ROOM'), onPressed: () {}),
        TextButton(child: Text('+ CONNECT'), onPressed: () {}),
        TextButton(child: Text('+ 8 NOTES'), onPressed: () {}),
      ],
    );
  }
}
