import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_fashion/model/product_model.dart';
import 'package:runway_fashion/widgets/category_filter.dart';
import 'package:runway_fashion/widgets/custom_appbar.dart';

class ProductDetalis extends StatelessWidget {
  const ProductDetalis({super.key, this.item});
final ProductModel?item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Men', suffix: 'assets/svgs/bi_bag.png', Prefix: 'assets/svgs/arrow-left.svg'),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CategoryFilter(),
               Gap(3),
               Image.asset('assets/images/products/Cloth 1 (1).png',width: 500,height: 781,fit: BoxFit.cover,),
            Gap(10),
          ],
        ),
      ),

    );
  }
}
