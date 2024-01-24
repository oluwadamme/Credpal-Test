class ProductModel {
  final String name;
  final String originalPrice;
  final String discountPrice;
  final String asset;
  final String company;

  ProductModel({
    required this.name,
    required this.originalPrice,
    required this.discountPrice,
    required this.asset,
    required this.company,
  });
}

final productList = <ProductModel>[
  ProductModel(
    name: "Anker Soundcore..",
    originalPrice: "₦ 88,000",
    discountPrice: "₦ 39,780",
    asset: "assets/images/unsplash_WdJRLZrWAvQ-1.png",
    company: "assets/images/Okay Fones 1.png",
  ),
  ProductModel(
    name: "iPhone 12 Pro",
    originalPrice: "₦ 515,000",
    discountPrice: "₦ 490,500",
    asset: "assets/images/unsplash_WdJRLZrWAvQ-2.png",
    company: "assets/images/IMate Stores 1.png",
  ),
  ProductModel(
    name: "iPhone XS Max 4GB..",
    originalPrice: "₦ 315,000",
    discountPrice: "₦ 295,999",
    asset: "assets/images/unsplash_WdJRLZrWAvQ.png",
    company: "assets/images/ogabassey 1.png",
  ),
];

final productList2 = <ProductModel>[
  ProductModel(
    name: "Nokia G20",
    originalPrice: "₦ 88,000",
    discountPrice: "₦ 39,780",
    asset: "assets/images/Product Image.png",
    company: "assets/images/Pay40.png",
  ),
  ProductModel(
    name: "iPhone XS Max 4GB..",
    originalPrice: "₦ 315,000",
    discountPrice: "₦ 295,999",
    asset: "assets/images/unsplash_WdJRLZrWAvQ.png",
    company: "assets/images/ogabassey 1.png",
  ),
  ProductModel(
    name: "iPhone 12 Pro",
    originalPrice: "₦ 515,000",
    discountPrice: "₦ 490,500",
    asset: "assets/images/unsplash_WdJRLZrWAvQ-2.png",
    company: "assets/images/IMate Stores 1.png",
  ),
];
