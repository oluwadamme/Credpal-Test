import 'package:flutter/material.dart';

class Merchant {
  final String name;
  final String asset;
  final bool active;
  final Color? color;

  Merchant({required this.name, required this.asset, required this.active, this.color});
}

final merchantList = <Merchant>[
  Merchant(name: "Justrite", asset: "assets/images/Frame 37022.png", active: true),
  Merchant(name: "Orile Restaurant", asset: "assets/images/PHOTO-2020-09-18-19-07-19 1.png", active: true),
  Merchant(name: "Slot", asset: "assets/images/Frame 36775.png", active: true),
  Merchant(name: "Pointek", asset: "assets/images/Frame 12575.png", active: true),
  Merchant(name: "Ogabassy", asset: "assets/images/Frame 36779.png", active: true),
  Merchant(
      name: "Casper Stores", asset: "assets/images/Frame 13081.png", active: false, color: const Color(0xFFFE2B5E)),
  Merchant(name: "Dreamworks", asset: "assets/images/Frame 13019.png", active: false),
  Merchant(name: "Hubmart", asset: "assets/images/unsplash_SV4IJQDTZrA.png", active: true),
  Merchant(name: "Just Used", asset: "assets/images/Frame 13106.png", active: true),
  Merchant(name: "Just fones", asset: "assets/images/Frame 37409.png", active: true),
];
