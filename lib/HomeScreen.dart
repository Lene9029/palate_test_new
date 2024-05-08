import 'package:flutter/material.dart';
import 'package:newobjectdetectionyolov5/add_recipe.dart';
import 'package:newobjectdetectionyolov5/detect_object_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("SMART PALATE"),
      centerTitle: true,
      backgroundColor: Colors.pink,),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddRecipe()));
                }, child: const Text('Add Recipe')),
          SizedBox(height: 80,),

          ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => detect_object_page()));
                }, child: const Text('Scan Ingredients')),
          SizedBox(height: 80,),
        ],
      )),
    );
  }
}