import 'package:flutter/material.dart';

import 'analysis/analysis_content.dart';
import 'menu/menu_list.dart';
import 'uninstall/uninstall_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// 为了页面复用，先创建实例统一管理
  static Widget uninstallContent = const UninstallContent();
  static Widget analysisContent = const AnalysisContent();

  Widget _showWidget = uninstallContent;

  void _changeModule(Widget newContent) {
    setState(() {
      _showWidget = newContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(title),
      // ),
      body: Row(
        children: <Widget>[
          MenuList(
            changeModulePage: _changeModule,
            uninstallContent: uninstallContent,
            analysisContent: analysisContent,
          ),
          Expanded(
            child: _showWidget,
          ),
        ],
      ),
    );
  }
}
