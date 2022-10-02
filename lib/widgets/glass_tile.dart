import 'dart:ui';
import 'package:flutter/material.dart';

class GlassListTile extends StatelessWidget {
  final Widget title;
  const GlassListTile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withOpacity(0.15),
              border: Border.all(color: Colors.white, width: .25)),
          child: ListTile(
            title: title,
          ),
        ),
      ),
    );
  }
}
