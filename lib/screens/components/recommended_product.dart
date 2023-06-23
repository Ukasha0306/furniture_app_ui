
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/screens/components/product_card.dart';
import 'package:furniture_app_ui/screens/details/details_screen.dart';
import '../../services/fetch_product.dart';
import '../../size_config.dart';

class RecommendedProduct extends StatelessWidget {
  const RecommendedProduct({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productList.length,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: SizeConfig.orientation == Orientation.portrait ? 2 : 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.639),
        itemBuilder: (context, index) => ProductCard(
          product: productList[index],
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>DetailsScreen(
                    product: productList[index]
                )
                )
            );
          },
        ),
      ),
    );
  }
}