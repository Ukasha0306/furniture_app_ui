import 'package:flutter/material.dart';

import '../size_config.dart';

class TitleTile extends StatelessWidget {

  final String title;
  const TitleTile({
    super.key, required this.title,

  });


  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(title,
      style: TextStyle(
          fontSize: defaultSize* 1.6,
          fontWeight: FontWeight.bold
      ),
    );
  }
}