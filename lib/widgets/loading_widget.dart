import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

Widget loadingWidget(double size) {
  return LoadingAnimationWidget.halfTriangleDot(color: Colors.indigoAccent, size: size);
}