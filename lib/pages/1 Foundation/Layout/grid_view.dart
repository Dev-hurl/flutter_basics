import 'package:flutter/material.dart';

class GridsView extends StatelessWidget {
  const GridsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('G R I D V I E W', style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.6,
          mainAxisExtent: 300,
        ),
        children: [
          myBox(1),
          myBox(2),
          myBox(3),
          myBox(4),
          myBox(5),
          myBox(6),
          myBox(7),
          myBox(8),
          myBox(9),
          myBox(10),
          myBox(11),
          myBox(12),
          myBox(13),
          myBox(14),
          myBox(15),
          myBox(16),
          myBox(17),
          myBox(18),
        ],
        ),
    );
  }
}
Widget myBox(int index){
  return Container(
    //margin: EdgeInsets.all(8),
    color: Colors.deepOrangeAccent,
    alignment: Alignment.center,
    child: Text('$index'),
  );
}