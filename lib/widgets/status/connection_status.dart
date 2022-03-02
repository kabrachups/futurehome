import 'package:flutter/material.dart';

class ConnectionStatus extends StatelessWidget {
  final bool status;
  const ConnectionStatus({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (status == true) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.wifi,
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
            Icons.wifi,
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
