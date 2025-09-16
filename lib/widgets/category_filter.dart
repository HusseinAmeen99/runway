import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color:Colors.black12,
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Text('Sort by',style: TextStyle(fontWeight: FontWeight.bold),),
                  Gap(25),
                  Image.asset('assets/svgs/Frame Sort by.png',width: 25,height: 25,)
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/svgs/filterIcon.png',width: 25,height: 25,),
                  Gap(10),
                  Text('Filter',style: TextStyle(fontWeight: FontWeight.bold),),
                  Gap(10),
                  Image.asset('assets/svgs/sectionsIcon.png',width: 25,height: 25,),
                  Gap(30),
                  Image.asset('assets/svgs/solar_users-group-rounded-outline.png',width: 25,height: 25,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
