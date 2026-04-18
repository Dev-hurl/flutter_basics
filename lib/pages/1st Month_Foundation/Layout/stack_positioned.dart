import 'package:flutter/material.dart';

class StackPositioned extends StatelessWidget {
  const StackPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('S T A C K  &  P O S I T I O N E D'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //1st Sample
              Stack(
                alignment: AlignmentGeometry.bottomCenter,
                children: [
                  Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/car.jpg"),
                      ),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 40),
              //2nd
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 12),
                  Positioned(
                    //top: 12,
                    //right: 12,
                    //bottom: 12,
                    child: Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        //border: Border.all(width: sqrt1_2),
                        borderRadius: BorderRadiusGeometry.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    bottom: 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        //border: Border.all(width: sqrt1_2),
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
