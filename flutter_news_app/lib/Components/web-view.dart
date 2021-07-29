import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'app-bar-custom.dart';

class AppWebView extends StatelessWidget {
  final String title;
  final String url;
  AppWebView({required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(title: title),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
