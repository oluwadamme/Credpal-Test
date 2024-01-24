import 'package:credpal_test/src/utils/assets.dart';
import 'package:credpal_test/src/utils/text_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductAppBar extends StatelessWidget {
  const ProductAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30).copyWith(top: 70),
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primaryContainer),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Pay later\neverywhere', style: thickBlackStyle(28, Colors.black)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(AppAssets.exclaimation),
          ),
          const Spacer(),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              RichText(
                text: TextSpan(text: "Shopping limit: ", style: mediumStyle(12, const Color(0xFF20294A)), children: [
                  TextSpan(
                    text: '₦0',
                    style: normalStyle(12, const Color(0xFF20294A), family: ""),
                  )
                ]),
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
    );
  }
}
