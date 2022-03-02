import 'package:flutter/material.dart';

import '../../models/device.dart';
import '../status/connection_status.dart';
import '../status/tampered_status.dart';

///To display Device model in Device list

class DeviceCard extends StatelessWidget {
  final Device device;
  const DeviceCard({required this.device, Key? key}) : super(key: key);

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
                      // TODO different icons for the devices
                      const Icon(Icons.devices),
                      Text(device.name),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ConnectionStatus(status: device.isOnline),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      TamperedStatus(status: device.isTampered),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Icon(Icons.keyboard_arrow_up_sharp),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  const Expanded(flex: 1, child: Text('ADDRESS')),
                  Expanded(
                    flex: 1,
                    child: Text(device.address),
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
                  const Expanded(flex: 1, child: Text('DEVICE ID')),
                  Expanded(
                    flex: 1,
                    child: Text(device.id.toString()),
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
                  TextButton(
                    onPressed: () {},
                    child: const Text('IDENTIFY'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('PING'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('TEST'),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('TIMELINE >'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('NOTES >'),
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
