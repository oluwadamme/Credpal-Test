import 'package:credpal_test/src/utils/assets.dart';
import 'package:credpal_test/src/utils/text_util.dart';
import 'package:credpal_test/src/widgets/product_appbar.dart';
import 'package:credpal_test/src/widgets/product_search.dart';
import 'package:credpal_test/src/widgets/product_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.maxFinite, 189),
        child: ProductAppBar(),
      ),
      body: Column(
        children: [
          ProductSearch(),
          ProductSpace(),
        ],
      ),
    );
  }
}
