import 'dart:io';

import 'package:flutter/material.dart';

import 'package:umeng/umeng.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    //不统计异常 异常交由bugly处理

    Umeng.init('5cee85214ca357fa500003d2',
           encrypt: true, reportCrash: false,logEnable: true);
    Umeng.logEvent('ddd');
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_platformVersion\n'),
        ),
      ),
    );
  }
}
