import 'package:flutter/material.dart';

class ListvView extends StatelessWidget {
  const ListvView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'L I S T V I E W',
        ),
      ),
      body: ListView(
        //parameters
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        scrollDirection: Axis.horizontal,

        children: [
          Container(height:200,color: Colors.blue,),
          Container(height:200,color: Colors.green,),
          Container(height:200,color: Colors.orange,),
          Container(height:200,color: Colors.brown,),
          Container(height:200,color: Colors.deepOrange,),
          Container(height:200,color: Colors.purple,),
          Container(height:200,color: Colors.grey,),
          Container(height:200,color: Colors.yellow,),
          Container(height:200,color: Colors.black,),
        ],
      ),
    );
  }
}