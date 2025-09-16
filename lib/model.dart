import 'package:flutter/material.dart';
import 'package:runway_fashion/model/category_model.dart';

class Model extends StatelessWidget {
  const Model({super.key, this.item});
final CategoryModel? item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
