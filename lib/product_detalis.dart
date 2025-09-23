import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:runway_fashion/widgets/category_filter.dart';
import 'package:runway_fashion/widgets/custom_appbar.dart';

class ProductDetalis extends StatefulWidget {
  const ProductDetalis({super.key,this.image, this.name, this.price});
final String? image,name,price;
  @override
  State<ProductDetalis> createState() => _ProductDetalisState();
}

class _ProductDetalisState extends State<ProductDetalis> {
  ScrollController scrollController=ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      _showBottomSheet();
    });

  }
  void _showBottomSheet(){
    showModalBottomSheet(
      barrierColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.17,
          minChildSize: 0.17,
          maxChildSize: 1,
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              height: 138,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(25),
                    topLeft: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  controller: scrollController,
                    children: [
                      Center(
                        child: Container(
                          height: 6,
                          width: 42,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Gap(5),
                      Text(widget.name.toString(),style: TextStyle(fontWeight: FontWeight.bold),),


                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.price.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),
                          Row(
                            children: [
                              SvgPicture.asset('assets/svgs/heart.svg'),
                              Gap(5),
                              Text('450',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),
                            ],
                          ),
                        ],
                      ),
                      Gap(20),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Select colour',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                                  Gap(10),
                                  SvgPicture.asset('assets/svgs/uil_sort.svg'),
                                ],
                              ),
                              Text('|',style: TextStyle(fontSize:25,color: Colors.grey.shade300),),
                              Row(
                                children: [
                                  Text('Select Size',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                                  Gap(10),
                                  SvgPicture.asset('assets/svgs/uil_sort.svg'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(5),
                      Container(
                        height: 55,
                        width: 390,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: Text('ADD TO BAG',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white ),)),
                      ),
                      Gap(10),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 390,
                            height: 55,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                              children: [
                                SvgPicture.asset('assets/svgs/solar_delivery-linear.svg'),
                                Gap(5),
                                Text('Free delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                              ],
                              ),
                            )
                            ),
                          Gap(5),
                          Container(
                              width: 390,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/svgs/freeReturn.svg'),
                                        Gap(7),
                                        Text('Free return',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                                      ],
                                    ),
                                    Text('View return policy',)
                                  ],
                                ),

                              )
                          ),
                          Gap(10),
                          Text('About product',style: TextStyle(fontWeight: FontWeight.bold),),
                          Gap(10),
                          Container(
                              width: 390,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/svgs/productlist.svg'),
                                        Gap(7),
                                        Text('Product details',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                                      ],
                                    ),
                                    SvgPicture.asset('assets/svgs/arch-down.svg') ,                                 ],
                                ),

                              )
                          ),
                          Container(
                              width: 390,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/svgs/brand.svg'),
                                        Gap(7),
                                        Text('Brand',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                                      ],
                                    ),
                                    SvgPicture.asset('assets/svgs/arch-down.svg')
                                  ],
                                ),

                              )
                          ),
                          Container(
                              width: 390,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/svgs/size.svg'),
                                        Gap(7),
                                        Text('Size and fit',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                                      ],
                                    ),
                                    SvgPicture.asset('assets/svgs/arch-down.svg'),
                                  ],
                                ),

                              )
                          ),
                          Container(
                              width: 390,
                              height: 55,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/svgs/history.svg'),
                                        Gap(7),
                                        Text('History',style: TextStyle(fontWeight: FontWeight.bold,fontSize:16 ),),
                                      ],
                                    ),
                                    SvgPicture.asset('assets/svgs/arch-down.svg')
                                  ],
                                ),

                              )
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              );
          },);

    }
    );}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Men', suffix: 'assets/svgs/bi_bag.png', Prefix: 'assets/svgs/arrow-left.svg',onTap: () => Navigator.pop(context),),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CategoryFilter(),
               Gap(3),
               Image.asset(widget.image.toString(),width: 500,height: 781,fit: BoxFit.cover,),
            Gap(10),
          ],
        ),
      ),

    );
  }
}
