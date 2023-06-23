import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app_ui/constant.dart';
import 'package:furniture_app_ui/screens/details/components/details_screen_body.dart';
import 'package:furniture_app_ui/size_config.dart';
import '../../model/product.dart';
import '../components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body: DetailsScreenBody(product:product),
    );

  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/arrow-long-left.svg'),
      ),
      actions: [
        IconButton(
          onPressed: (){},
            icon: SvgPicture.asset('assets/icons/bag.svg'),
        ),
        SizedBox(width: SizeConfig.defaultSize,),
      ],
    );
  }
}
