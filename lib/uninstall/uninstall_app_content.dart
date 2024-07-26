import 'package:flutter/material.dart';

/// 目录视图内容
class UninstallAppContent extends StatefulWidget {
  const UninstallAppContent({super.key});

  @override
  State<UninstallAppContent> createState() => _MenuColumnState();
}

class _MenuColumnState extends State<UninstallAppContent> {
  final myController = TextEditingController();

  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      width: 300.0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    child: const Text('应用卸载1'),
                    onPressed: () {
                      print('ElevatedButton 应用卸载 pressed');
                    },
                  ),
                  ElevatedButton(
                    child: const Text('应用卸载2'),
                    onPressed: () {
                      print('ElevatedButton 应用卸载 pressed');
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
}
