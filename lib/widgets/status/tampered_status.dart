import 'package:flutter/material.dart';

class TamperedStatus extends StatelessWidget {
  final bool status;
  const TamperedStatus({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (status == true) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.check,
            color: Colors.green,
          ),
          Text(
            'online',
            style: TextStyle(color: Colors.green),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.warning_amber_outlined,
            color: Colors.orange,
          ),
          Text(
            'Offline',
            style: TextStyle(color: Colors.orange),
          ),
        ],
      );
    }
  }
}
