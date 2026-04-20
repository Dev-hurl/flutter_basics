import 'package:flutter/material.dart';

class ListsTile extends StatelessWidget {
  const ListsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('L I S T T I L E'),
      ),
      body: ListTile(
        contentPadding: EdgeInsets.all(8),
        tileColor: Colors.grey[300],

        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.person,
            color: Colors.blueGrey,
          ),
        ),
        title: Text(
          'Name',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16, 
          ),
        ),
        subtitle: Text(
          'This is a subtitle',
          style:TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
          ),
        ),
        //isThreeLine: true,
        trailing: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.blue,
        ),
      ),
    );
  }
}
/*class user{
  String name;
  String icon;

 User{
  required this.name,
 }
}
*/