import 'dart:convert';

extension StringCrypto on String {
  String get toBase64 {
    final bytes = utf8.encode(this);
    return base64.encode(bytes);
  }
}