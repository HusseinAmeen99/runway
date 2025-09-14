import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title, required this.suffix, required this.Prefix});
  final String title;
  final String suffix;
  final String Prefix;
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: preferredSize.height,
      leading:SizedBox.shrink(),
      leadingWidth: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(Prefix,width: 10,height: 25,),
          Text(title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          Image.asset(suffix,width:25 ,height: 25,),
        ],
      ),
    );
  }
}
