import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../model/product.dart';
import '../../../size_config.dart';


class ProductInfo extends StatelessWidget {
  final Product product;
  const ProductInfo({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return Container(
      padding: EdgeInsets.all(defaultSize * 2),
      height: defaultSize * 37.5,
      width: defaultSize * (SizeConfig.orientation == Orientation.landscape ? 35.0 : 15.0),

      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              product.category.toString().toUpperCase(),
              style: lightTextStyle,
            ),
            SizedBox(
              height: defaultSize,
            ),
            Text(
              product.title.toString(),
              style: TextStyle(
                fontSize: defaultSize * 2.4,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.8,
                height: 1.4,
              ),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Text(
              "Form",
              style: lightTextStyle,
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: defaultSize * 1.6,
                height: 1.6,
              ),
            ),
            SizedBox(
              height: defaultSize * 2,
            ),
            Text(
              "Available Color",
              style: lightTextStyle,
            ),
            Row(
              children: [
                buildColorBox(
                  defaultSize,
                  color: const Color(0xFF7BA275),
                  isActive: true,
                ),
                buildColorBox(
                  defaultSize,
                  color: const Color(0xFFD7D7D7),
                ),
                buildColorBox(defaultSize, color: kTextColor),
              ],
            )
          ],
        ),
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {required Color color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
      ),
      child: isActive ? SvgPicture.asset('assets/icons/check.svg') : SizedBox(),
    );
  }
}