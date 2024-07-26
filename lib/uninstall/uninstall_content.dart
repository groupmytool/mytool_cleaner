import 'package:flutter/material.dart';

import 'uninstall_app_content.dart';
import 'uninstall_app_list.dart';

/// 目录视图内容
class UninstallContent extends StatefulWidget {
  const UninstallContent({super.key});

  @override
  State<StatefulWidget> createState() => _UninstallContentState();
}

class _UninstallContentState extends State<UninstallContent> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: const UninstallAppList(),
            ),
            const Expanded(
              child: UninstallAppContent(),
            ),
          ],
        );
      },
    );
  }
}
