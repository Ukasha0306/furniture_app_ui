import 'package:flutter/material.dart';
import 'package:furniture_app_ui/components/title_text_tile.dart';
import 'package:furniture_app_ui/screens/components/recommended_product.dart';
import 'package:furniture_app_ui/services/fetch_category.dart';
import 'package:furniture_app_ui/size_config.dart';
import '../../services/fetch_product.dart';
import 'category.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleTile(
                title: 'Browse by Categories',
              ),
            ),
            FutureBuilder(
              future: fetchCategory(),
              builder: (context, snapshot) =>
              snapshot.hasData
                  ? const Categories()
                  : Center(child: Image.asset("assets/ripple.gif")),
            ),
            const Divider(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: const TitleTile(
                title: 'Recommended For You',
              ),
            ),
            FutureBuilder(
              future: fetchProduct(),
                builder: (context, snapshot){
                return snapshot.hasData ?
                const RecommendedProduct()
                    : Center(child: Image.asset("assets/ripple.gif"));

            })
          ],
        ),
      ),
    );
  }
}


