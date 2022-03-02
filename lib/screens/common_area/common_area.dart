import 'package:flutter/material.dart';
import 'package:futurehome/screens/common_area/widgets/main_card.dart';

class CommonArea extends StatelessWidget {
  const CommonArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 60, 30, 60),
        child: MainCard(),
      ),
    );
  }
}
