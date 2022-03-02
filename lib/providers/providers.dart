import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:futurehome/services/user_service.dart';

import '../models/device.dart';
import '../models/user.dart';
import '../services/device_service.dart';

final userFutureProvider = FutureProvider<User>((ref) {
  return UserService().user;
});

final devicesFutureProvider = FutureProvider<List<Device>>((ref) {
  return DeviceService().devices;
});
