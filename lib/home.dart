import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway_fashion/categories.dart';
import 'package:runway_fashion/model.dart';
import 'package:runway_fashion/model/category_model.dart';
import 'package:runway_fashion/product_detalis.dart';
import 'package:runway_fashion/widgets/custom_appbar.dart';
import 'package:video_player/video_player.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    _controller=VideoPlayerController.asset(
        'assets/video/267241_small.mp4',
    )..initialize().then((_) {
      // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
      setState(() {
        _controller.play();
      });
    })..setLooping(true);
    super.initState();
  }
  
  List<CategoryModel> category=[
    CategoryModel('Women', 'assets/images/category/women.png'),
    CategoryModel('Men', 'assets/images/category/men.png'),
    CategoryModel('Kids', 'assets/images/category/kids.png'),
    CategoryModel('Deals', 'assets/images/category/deals.png'),
    CategoryModel('Men', 'assets/images/category/men.png'),
    CategoryModel('Kids', 'assets/images/category/kids.png'),
    CategoryModel('Deals', 'assets/images/category/deals.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          title: 'Runway',
          suffix: 'assets/svgs/solar_bell-line-duotone.png',
          Prefix: 'assets/svgs/menu.svg'),

    body: Stack(
      children: [
        ///video
              AspectRatio(
                   aspectRatio: _controller.value.aspectRatio,
                   child: VideoPlayer(_controller)),
                 Positioned(
                   //bottom: 0,
                   left: 0,
                   right: 0,
                   bottom: 0,
                   child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(10),
                           ///category
                           Padding(
                             padding: const EdgeInsets.only(left: 8.0),
                             child: Text('Categories',style: TextStyle(
                                fontSize: 18,
                               color: Colors.grey[700],
                               fontWeight: FontWeight.w500,
                              ),
                             ),
                           ),
                            Gap(10),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(category.length,
                                  (index) {
                                final item=category[index];
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 15.0),
                                      child: GestureDetector(
                                        onTap:(){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Categories(),));
                                        },
                                        child: Column(
                                          children: [
                                            Gap(10),
                                          Image.asset(item.Image,width: 80,),
                                            Gap(5),
                                            Text(item.title),
                                          ],
                                        ),
                                      ),
                                    );
                                  },

                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                 ),

      ],
    ),
    );
  }
}
