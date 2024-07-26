import 'package:flutter/material.dart';

/// 目录视图内容
class UninstallAppList extends StatefulWidget {
  const UninstallAppList({super.key});

  @override
  State<UninstallAppList> createState() => _MenuColumnState();
}

class _MenuColumnState extends State<UninstallAppList> {
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
            child: Row(
              children: <Widget>[
                const Icon(Icons.search),
                // 应用搜索
                Expanded(
                  child: TextField(
                    controller: myController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '搜索应用',
                    ),
                  ),
                ),
                // 排序
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 20,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['One', 'Two', 'Three', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
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
