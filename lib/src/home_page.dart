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
            padding: const EdgeInsets.all(20),
            color: const Color(0xFFF1F3FE),
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
