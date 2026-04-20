import 'package:flutter/material.dart';

class TabBarBody extends StatefulWidget {
  const TabBarBody({super.key});

  @override
  State<TabBarBody> createState() => _TabBarBodyState();
}

class _TabBarBodyState extends State<TabBarBody> with SingleTickerProviderStateMixin {
  late TabController _tabController;


  List images = [
    'maldives.png',
    'santorini.png',
    'beach.png',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

  }
  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            //action
          },
          icon: Icon(Icons.menu_rounded),
        ),
        actions: [
          Icon(Icons.notifications_rounded),
        ],
        title: Text(
          'TabBar in Body',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discover',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              //labelPadding: EdgeInsets.only(left: 20, right: 20),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Places'),
                Tab(text: 'Inspiration'),
                Tab(text: 'Emotions'),
              ],
              ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index){
                    return Container(
                      height: 300,
                      width: 200,
                      margin: EdgeInsets.only(right:10),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(24),
                        image:DecorationImage(
                          image: AssetImage(
                            "images/${images[index]}",
                          ),
                      ),
                      ),
                    );
                  }
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}