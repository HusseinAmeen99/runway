import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway_fashion/model/product_model.dart';
import 'package:runway_fashion/product_detalis.dart';
import 'package:runway_fashion/widgets/category_filter.dart';
import 'package:runway_fashion/widgets/custom_appbar.dart';
import 'package:runway_fashion/widgets/product_item.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> products=[
      ProductModel('assets/images/products/Cloth 1 (1).png', '\$30', 'Gray coat and white T-shirt'),
      ProductModel('assets/images/products/Cloth 2 (1).png', '\$20', 'Top man black'),
      ProductModel('assets/images/products/Cloth 4 (1).png', '\$40', 'Deep gray essential regul..'),
      ProductModel('assets/images/products/Cloth 1 (1).png', '\$30', 'Gray coat and white T-shirt'),
      ProductModel('assets/images/products/Cloth 2 (1).png', '\$20', 'Top man black'),
      ProductModel('assets/images/products/Cloth 4 (1).png', '\$40', 'Deep gray essential regul..'),
    ];
    return Scaffold(
      appBar: CustomAppbar(onTap: () => Navigator.pop(context),title: 'Men', suffix: 'assets/svgs/bi_bag.png', Prefix: 'assets/svgs/arrow-left.svg'),
      body: Column(
        children: [
          CategoryFilter(),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Gap(15),
          //     Container(
          //       width: 200,
          //         //height: 300,
          //         child: Image.asset('assets/images/products/Cloth 1 (1).png',)),
          //     Gap(10),
          //     Text('Gray coat and white T-sh..'),
          //     Row(
          //       children: [
          //         Text('30\$',style: TextStyle(fontWeight: FontWeight.bold),),
          //         Gap(155),
          //         SvgPicture.asset('assets/svgs/ph_heart-light.svg',width: 20,height: 20,),
          //       ],
          //     ),
          //
          //   ],
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                crossAxisSpacing: 10,
                  childAspectRatio: 1/1.7,
              ),
                itemCount: products.length,
                itemBuilder:(context, index){
                  final item=products[index];
                  return ProductItem(
                      image: item.image,
                    price: item.price,
                    name: item.name,
                    ontap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetalis(image: item.image,name: item.name,price: item.price,),));
                    },);
                } ,
              ),
            ),
          )
        ],
      ),

    );
  }
}
