import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title, required this.suffix, required this.Prefix ,this.onTap});
  final String title;
  final String suffix;
  final String Prefix;
  final Function()? onTap;

  @override

  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0.0,
      toolbarHeight: preferredSize.height,
      leading:SizedBox.shrink(),
      leadingWidth: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(onTap: onTap,child: SvgPicture.asset(Prefix,width: 10,height: 25,)),
          Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Image.asset(suffix,width:25 ,height: 25,),
        ],
      ),
    );
  }
}
