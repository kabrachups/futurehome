import 'package:flutter/material.dart';
import 'package:futurehome/screens/common_area/widgets/main_card_header.dart';

import 'main_card_device_list.dart';
import 'main_card_user.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            MainCartHeader(),
            MainCardUser(),
            Flexible(child: MainCardDeviceList()),
          ],
        ),
      ),
    );
  }
}
