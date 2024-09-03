import 'dart:io';

String baseUrl() =>
    Platform.isAndroid ? "http://10.0.2.2:8080" : "http://localhost:8080";
