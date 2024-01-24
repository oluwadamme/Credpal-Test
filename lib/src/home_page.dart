import 'package:credpal_test/src/data/merchant_model.dart';
import 'package:credpal_test/src/utils/text_util.dart';
import 'package:credpal_test/src/widgets/merchant_logo.dart';
import 'package:credpal_test/src/widgets/product_appbar.dart';
import 'package:credpal_test/src/widgets/product_search.dart';
import 'package:credpal_test/src/widgets/product_space.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.maxFinite, 189),
        child: ProductAppBar(),
      ),
      body: ListView(
        children: [
          const ProductSearch(),
          const ProductSpace(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Featured Merchants', style: thickBlackStyle(16, const Color(0xFF32324C))),
                    Text('View all',
                        textAlign: TextAlign.right,
                        style: normalStyle(12, const Color(0xFF274FED), family: 'Product Sans'))
                  ],
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 39,
                  spacing: 25,
                  children: [...merchantList.map((e) => MerchantsLogo(merchant: e))],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
