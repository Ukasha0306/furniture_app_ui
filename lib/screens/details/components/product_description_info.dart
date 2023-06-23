import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../model/product.dart';
import '../../../size_config.dart';

class ProductDescriptionInfo extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductDescriptionInfo({Key? key, required this.product, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return  Container(
      constraints: BoxConstraints(maxHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9,
        left: defaultSize * 2,
        right: defaultSize * 2,
      ),
      // height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(defaultSize * 1.2),
            topRight: Radius.circular(defaultSize * 1.2),
          )),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.subTitle.toString(),
              style: TextStyle(
                fontSize: defaultSize * 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: defaultSize * 3,
            ),
            Text(
              product.description.toString(),
              style: TextStyle(
                  color: kTextColor.withOpacity(0.7), height: 1.5),
            ),
            SizedBox(height: defaultSize * 3,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(defaultSize * 1.5),
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: press,
                  child: Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: defaultSize * 1.6),
                  )),
            )
          ],
        ),
      ),
    );
  }
}