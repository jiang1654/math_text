import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_tex/flutter_tex.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TeXView(
        renderingEngine: TeXViewRenderingEngine.katex(),
        child: TeXViewDocument(
            '''<img src ="https://studymeta.oss-cn-hongkong.aliyuncs.com/4/456b361fabfe71fa62015415b0499261.jpg"/>'''));
  }
}
