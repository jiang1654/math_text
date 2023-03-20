import 'package:flutter/widgets.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:flutter_tex/src/views/tex_view_mobile.dart'
    if (dart.library.html) 'package:flutter_tex/src/views/tex_view_web.dart';

///A Flutter Widget to render Mathematics / Maths, Physics and Chemistry, Statistics / Stats Equations based on LaTeX with full HTML and JavaScript support.
class TeXView extends StatefulWidget {
  /// A list of TeXViewChild.
  final TeXViewWidget child;

  /// Style TeXView Widget with [TeXViewStyle].
  final TeXViewStyle? style;

  /// TeXView height (Only for Web)
  //final double? height;

  /// Register fonts.
  final List<TeXViewFont>? fonts;

  /// Render Engine to render TeX.
  final TeXViewRenderingEngine? renderingEngine;

  /// Show a loading widget before rendering completes.
  final Widget Function(BuildContext context)? loadingWidgetBuilder;

  /// 图片点击回调
  ///[index] HTML 中图片索引
  /// [url] 当前点击的图片的地址
  /// [images] HTML中所有的图片的集合
  final Function(int index, String url, List<String> images)? imageCallBack;

  /// Callback when TEX rendering finishes.
  final Function(double height)? onRenderFinished;

  const TeXView({
    Key? key,
    required this.child,
    this.fonts,
    // this.height = 500,
    this.style,
    this.loadingWidgetBuilder,
    this.onRenderFinished,
    this.renderingEngine,
    this.imageCallBack,
  }) : super(key: key);

  @override
  TeXViewState createState() => TeXViewState();
}
