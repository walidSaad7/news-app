import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  Category category;
  int index;
  Function onCategoryClick;
  CategoryItem(this.category,this.index,this.onCategoryClick);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onCategoryClick(category);
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
            bottomRight: Radius.circular(index%2==0?0:25),
            bottomLeft: Radius.circular(index%2==0?25:0),

          )

        ),
        child: Column(

          children: [
            Image.asset(category.imagePath,height: 120,),
            Text(category.title,style: Theme.of(context).textTheme.headline4!.copyWith(
              fontSize: 22,
              color: Colors.white
            ),textAlign: TextAlign.start,)
          ],
        ),
      ),
    );
  }
}
class Category{
  String id;
  String title;
  String imagePath;
  Color color;
  Category({required this.color,required this.id,required this.imagePath,required this.title});
}
