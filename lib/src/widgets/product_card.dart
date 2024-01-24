import 'package:credpal_test/src/data/product_model.dart';
import 'package:credpal_test/src/utils/assets.dart';
import 'package:credpal_test/src/utils/text_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      shadowColor: const Color(0x0C000000),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        constraints: const BoxConstraints(maxWidth: 165),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SizedBox(
                      height: 96,
                      child: Image.asset(
                        product.asset,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  product.name,
                  style: blackStyle(14, Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(product.discountPrice, style: blackStyle(14, const Color(0xFF274FED), family: "")),
                    const SizedBox(width: 14),
                    Text(product.originalPrice,
                        style: mediumStyle(12, const Color(0xFFB2B2CB),
                            family: '', decoration: TextDecoration.lineThrough))
                  ],
                )
              ],
            ),
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Image.asset(
                product.company,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
