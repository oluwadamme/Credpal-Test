import 'package:credpal_test/src/utils/assets.dart';
import 'package:credpal_test/src/utils/text_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductSearch extends StatelessWidget {
  const ProductSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 84,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: normalStyle(12, const Color(0xFF9393B7)),
                  hintText: 'Search for products or stores',
                  fillColor: const Color(0xFFF4F5FE),
                  prefixIcon: SvgPicture.asset(AppAssets.search, fit: BoxFit.scaleDown),
                  filled: true,
                  focusedBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFF4F5FE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(AppAssets.scan, fit: BoxFit.scaleDown),
          )
        ],
      ),
    );
  }
}
