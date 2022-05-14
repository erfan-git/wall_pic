import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

const String BASE_URL = "https://wallhaven.cc/api/v1/";

Future<bool> checkInternet() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }

  return false;
}

void showSnackBar(BuildContext context, bool isError, String? message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message ?? 'Error',
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: isError ? Colors.black : Colors.white),
      ),
      backgroundColor: isError ? Colors.redAccent : Colors.black,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
    ),
  );
}

final Uint8List kTransparentImage = Uint8List.fromList(
  <int>[
    0x89,
    0x50,
    0x4E,
    0x47,
    0x0D,
    0x0A,
    0x1A,
    0x0A,
    0x00,
    0x00,
    0x00,
    0x0D,
    0x49,
    0x48,
    0x44,
    0x52,
    0x00,
    0x00,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x01,
    0x08,
    0x06,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x15,
    0xC4,
    0x89,
    0x00,
    0x00,
    0x00,
    0x0A,
    0x49,
    0x44,
    0x41,
    0x54,
    0x78,
    0x9C,
    0x63,
    0x00,
    0x01,
    0x00,
    0x00,
    0x05,
    0x00,
    0x01,
    0x0D,
    0x0A,
    0x2D,
    0xB4,
    0x00,
    0x00,
    0x00,
    0x00,
    0x49,
    0x45,
    0x4E,
    0x44,
    0xAE,
  ],
);
