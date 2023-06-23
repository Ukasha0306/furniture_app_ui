import 'package:flutter/material.dart';
import '../../services/fetch_category.dart';
import 'category_card.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          getList.length,
              (index) => CategoryCard(
            category: getList[index],
          ),
        ),
      ),
    );
  }
}