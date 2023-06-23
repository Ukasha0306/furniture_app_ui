import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_ui/constant.dart';
import 'package:furniture_app_ui/screens/details/components/product_description_info.dart';
import 'package:furniture_app_ui/screens/details/components/product_info.dart';
import 'package:furniture_app_ui/size_config.dart';

import '../../../model/product.dart';

class DetailsScreenBody extends StatelessWidget {
  final Product product;
  const DetailsScreenBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return SingleChildScrollView(
      child: SizedBox(
        height: SizeConfig.orientation == Orientation.landscape
            ? SizeConfig.screenWidth
            : SizeConfig.screenHeight - AppBar().preferredSize.height,
        width: double.infinity,
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductInfo(
              product: product,
            ),
            Positioned(
              top: defaultSize * 37.5,
              left: 0,
              right: 0,
              child: ProductDescriptionInfo(product: product, press: () {}),
            ),
            Positioned(
              top: defaultSize * 9.5,
              right: -defaultSize * 7.5,
              child: Hero(
                tag: product.id.toString(),
                child: Image.network(
                  product.image.toString(),
                  fit: BoxFit.cover,
                  height: defaultSize * 37.8,
                  width: defaultSize * 36.4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
