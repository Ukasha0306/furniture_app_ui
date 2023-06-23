import 'package:flutter/material.dart';

import '../../components/title_text_tile.dart';
import '../../constant.dart';
import '../../model/product.dart';
import '../../size_config.dart';



class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product, required this.press}) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Container(
        width: defaultSize * 14.5,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Hero(
                  tag: product.id.toString(),
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/spinner.gif",
                    image: product.image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: defaultSize),
                child: TitleTile(title: product.title.toString()),
              ),
              SizedBox(height: defaultSize/2,),
              Text("\$${product.price}"),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}