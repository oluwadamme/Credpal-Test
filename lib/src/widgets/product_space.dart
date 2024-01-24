import 'package:credpal_test/src/data/product_model.dart';
import 'package:credpal_test/src/utils/assets.dart';
import 'package:credpal_test/src/utils/text_util.dart';
import 'package:credpal_test/src/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductSpace extends StatelessWidget {
  const ProductSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 14),
      color: const Color(0xFFF1F3FE),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ProductCard(product: productList2[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemCount: productList2.length,
            ),
          ),
          const SizedBox(height: 26),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ProductCard(product: productList[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 24),
              itemCount: productList.length,
            ),
          ),
        ],
      ),
    );
  }
}
