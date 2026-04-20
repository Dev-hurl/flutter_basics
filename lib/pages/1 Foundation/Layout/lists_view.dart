import 'package:flutter/material.dart';

class ListsView extends StatelessWidget {
  const ListsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('L I S T V I E W')),
      body: Center(
        child: ListView(
          //parameters
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 133, 200, 255),
              ),
              child: Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ),
            //Horizontal List Inside Vertical List
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 133, 200, 255),
              ),
              child: Center(
                child: Text(
                  'Item 2',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ),
            //Vertical List Inside Vertical List
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 133, 200, 255),
              ),
              child: Center(
                child: Text(
                  'Item 3',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 133, 200, 255),
              ),
              child: Center(
                child: Text(
                  'Item 4',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 133, 200, 255),
              ),
              child: Center(
                child: Text(
                  'Item 5',
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
