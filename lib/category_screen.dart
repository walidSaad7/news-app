import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryScreen extends StatelessWidget {
  Function OnCategoryClickCallBACK;
  CategoryScreen(this.OnCategoryClickCallBACK);
  List<Category>Categories=[
    Category(color: Color.fromRGBO(201, 28, 34, 1.0), id: 'id', imagePath: 'assets/images/sports.png', title: 'Sports'),
    Category(color: Color.fromRGBO(0, 62, 144, 1.0), id: 'id', imagePath: 'assets/images/Politics.png', title: 'Sports'),
    Category(color: Color.fromRGBO(226, 31, 122, 1.0), id: 'id', imagePath: 'assets/images/health.png', title: 'Sports'),
    Category(color: Color.fromRGBO(208, 121, 74, 1.0), id: 'id', imagePath: 'assets/images/bussines.png', title: 'Sports'),
    Category(color: Color.fromRGBO(78, 129, 201, 1.0), id: 'id', imagePath: 'assets/images/environment.png', title: 'Sports'),
    Category(color: Color.fromRGBO(235, 207, 87, 1.0), id: 'id', imagePath: 'assets/images/science.png', title: 'Sports'),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('pick your category\n of interst',style: Theme.of(context).textTheme.headline4,),
          Expanded(child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8

          ), itemBuilder: (buildContext,index){
            return CategoryItem(Categories[index], index,(category){
              OnCategoryClickCallBACK(category);

            });
          },itemCount: Categories.length,))
        ],
      ),
    );
  }
}
