import 'package:credpal_test/src/utils/assets.dart';
import 'package:credpal_test/src/utils/text_util.dart';
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.maxFinite, 189),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30).copyWith(top: 70),
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'Pay later\neverywhere',
                style: TextStyle(
                  color: Color(0xFF1A1A1A),
                  fontSize: 28,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(AppAssets.exclaimation),
              ),
              const Spacer(),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Shopping limit: ₦0',
                    style: mediumStyle(12, const Color(0xFF20294A)),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF274FED),
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                    child: Text(
                      'Activate Credit',
                      style: boldStyle(13, Colors.white, family: 'Axiforma'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
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
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 14),
            color: const Color(0xFFF1F3FE),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const ProductCard(),
                    separatorBuilder: (context, index) => const SizedBox(width: 24),
                    itemCount: 4,
                  ),
                ),
                const SizedBox(height: 26),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const ProductCard(),
                    separatorBuilder: (context, index) => const SizedBox(width: 24),
                    itemCount: 4,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

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
        constraints: const BoxConstraints(maxWidth: 161),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Image.asset(
                    "assets/images/Product Image.png",
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  'iPhone XS Max 4GBbe',
                  style: blackStyle(14, Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text('₦ 39,780', style: blackStyle(14, const Color(0xFF274FED), family: "")),
                    const SizedBox(width: 14),
                    Text('₦ 88,000',
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
                "assets/images/Pay40.png",
                fit: BoxFit.scaleDown,
              ),
            )
          ],
        ),
      ),
    );
  }
}
