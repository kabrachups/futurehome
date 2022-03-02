import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurehome/widgets/cards/device_card.dart';

import '../../../models/device.dart';
import '../../../providers/providers.dart';

class MainCardDeviceList extends ConsumerWidget {
  const MainCardDeviceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Device>> user = ref.watch(devicesFutureProvider);
    // TODO implement loading and error handling
    return user.when(
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => const Text('Oops'),
      data: (devices) => ListView.builder(
          itemCount: devices.length,
          itemBuilder: (context, index) {
            return DeviceCard(device: devices[index]);
          }),
    );
  }
}
