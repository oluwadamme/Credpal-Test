import 'package:credpal_test/src/data/merchant_model.dart';
import 'package:credpal_test/src/utils/text_util.dart';
import 'package:flutter/material.dart';

class MerchantsLogo extends StatelessWidget {
  const MerchantsLogo({
    super.key,
    required this.merchant,
  });
  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage(merchant.asset),
                    fit: BoxFit.fill,
                  ),
                  color: merchant.color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              if (merchant.active)
                Container(
                  width: 11,
                  height: 11,
                  margin: const EdgeInsets.only(right: 5, top: 3),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF23C68B),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0xFFFFFFFF),
                        blurRadius: 0,
                        offset: Offset(0, 0),
                        spreadRadius: 2,
                      )
                    ],
                  ),
                )
            ],
          ),
        ),
        Text(merchant.name, textAlign: TextAlign.center, style: mediumStyle(12, Colors.black))
      ],
    );
  }
}
