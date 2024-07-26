import 'package:flutter/material.dart';

/// 目录视图内容
class MenuList extends StatefulWidget {
  const MenuList(
      {super.key,
      required this.changeModulePage,
      required this.uninstallContent,
      required this.analysisContent});

  final void Function(Widget) changeModulePage;
  final Widget uninstallContent;
  final Widget analysisContent;

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Container(
              color: Colors.indigoAccent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all<Size>(const Size(120, 80)),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.blue),
                      ),
                      child: const Text('应用卸载'),
                      onPressed: () {
                        widget.changeModulePage(widget.uninstallContent);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            WidgetStateProperty.all<Size>(const Size(120, 80)),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.blue),
                      ),
                      child: const Text('磁盘扫描'),
                      onPressed: () {
                        widget.changeModulePage(widget.analysisContent);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
