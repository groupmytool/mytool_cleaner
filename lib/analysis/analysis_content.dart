import 'package:flutter/material.dart';

/// 目录视图内容
class AnalysisContent extends StatefulWidget {
  const AnalysisContent({super.key});

  @override
  State<AnalysisContent> createState() => _AnalysisContentState();
}

class _AnalysisContentState extends State<AnalysisContent> {
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
            child: const Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                  child: Text('磁盘扫描工作区1'),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
                  child: Text('磁盘扫描工作区2'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
