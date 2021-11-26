import 'package:flutter/material.dart';
import 'package:news/category_detalis_screen.dart';
import 'package:news/category_item.dart';
import 'package:news/category_screen.dart';

class HomeScrren extends StatefulWidget {
static const String routName='home';

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(
        children: [
          Image.asset('assets/images/pattern.png'),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              centerTitle: true,
              title: Text('News App'),
              toolbarHeight: 80,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            drawer: Drawer(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 48),

                      width: double.infinity,
                      color: Colors.green,
                      child: Center(child: Text('News App',style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white
                      ),)),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                        selectedCategory=null;
                        setState(() {

                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.list,size: 30,),
                            SizedBox(
                              width: 6,
                            ),
                            Text('Category',style: Theme.of(context).textTheme.headline4!.copyWith(
                              fontSize: 18
                            ),),

                          ],
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.settings,size: 30,),
                          SizedBox(
                            width: 6,
                          ),
                          Text('Settings',style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontSize: 18
                          ),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: selectedCategory==null?
            CategoryScreen(onCategoryClick):
            CategoryDetalisScreen(selectedCategory!),

          )

        ],
      ),
    );
  }

  Category? selectedCategory=null;

  void onCategoryClick(Category category){
    selectedCategory=category;
    setState(() {

    });

  }
}
