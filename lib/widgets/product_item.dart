import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.image, required this.price, required this.name, this.ontap});
final String image;
final String price;
final String name;
final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(10),
          Container(
              width: 200,
              //height: 300,
              child: Image.asset(image,)),
          Gap(10),
          Text(name,maxLines: 1,),
          Row(
            children: [
              Text(price,style: TextStyle(fontWeight: FontWeight.bold),),
              Gap(135),
              SvgPicture.asset('assets/svgs/ph_heart-light.svg',width: 20,height: 20,),
            ],
          ),
        ],
      ),
    );
  }
}
