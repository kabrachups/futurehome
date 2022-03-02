import 'package:flutter/material.dart';

import '../../models/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(Icons.account_circle_outlined),
                      Text(user.firstName + ' ' + user.lastName),
                      const Icon(Icons.insert_drive_file_outlined),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(Icons.phone),
                      Text('+' + user.mobile.toString()),
                      const Icon(Icons.insert_drive_file_outlined),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text('Priority ' + user.priority.toString()),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      const Icon(Icons.alternate_email),
                      Text(user.email),
                      const Icon(Icons.insert_drive_file_outlined),
                    ],
                  ),
                ),
                const Icon(Icons.keyboard_arrow_up_sharp),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  const Expanded(flex: 1, child: Text('UPDATED AT')),
                  Expanded(
                    flex: 1,
                    child: Text(user.updatedAt.toString().substring(0, 10)),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('EDIT'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('DELETE'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
