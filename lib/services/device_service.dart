import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../models/device.dart';

/// Getting the list on user devises
/// Used in providers.dart to provide devices future getter
// TODO add userId parameter to retrieve relevant devices

// for testing purposes
String fakeDeviceJsonString = '''
      {"devices": [
        {
          "id": 1,
          "name": "Smoke detector",
          "isOnline": true,
          "isTampered": true,
          "address": "2_0"
        },
        {
          "id": 2,
          "name": "Water leak detector",
          "isOnline": false,
          "isTampered": false,
          "address": "2_0"
        },
        {
          "id": 3,
          "name": "Camera",
          "isOnline": true,
          "isTampered": false,
          "address": "2_0"
        }
      ]}
    ''';

class DeviceService extends ChangeNotifier {
  Future<List<Device>> get devices {
    return _getDevices();
  }

  // get devices from the database
  // TODO switch from Future to Stream to track realtime changes
  Future<List<Device>> _getDevices() async {
    String deviceJsonString = await Future.value(fakeDeviceJsonString);
    Map<String, dynamic> deviceDataMap = jsonDecode(deviceJsonString);
    List deviceDataList = deviceDataMap['devices'];
    List<Device> deviceList = [];
    for (var deviceData in deviceDataList) {
      Device device = Device.fromJson(deviceData);
      deviceList.add(device);
    }
    return deviceList;
  }
}
