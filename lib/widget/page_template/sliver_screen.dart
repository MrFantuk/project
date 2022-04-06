import 'package:flutter/material.dart';
import 'package:project/const/colors.dart';

class ScreenSliver extends StatelessWidget {
  final Widget appBar;
  final List<Widget> slivers;
  const ScreenSliver({Key? key,required this.appBar,required this.slivers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [
          appBar,
          ...slivers,
        ],
      ),
    );
  }
}
