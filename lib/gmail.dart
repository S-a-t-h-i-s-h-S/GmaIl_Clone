import 'package:flutter/material.dart';

class gmail extends StatefulWidget {
  const gmail({super.key});

  @override
  State<gmail> createState() => _gmailState();
}

class _gmailState extends State<gmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 189, 69, 32),
        title: Text('Primary'),
        actions: [Icon(Icons.search)],
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 189, 69, 32),
        onPressed: () {
          print('Compose Mail');
        },
        child: Icon(Icons.edit),
      ),
      body: Column(
        children: [
          ListTileMethod(
              title: 'Social',
              subtitle: 'Google+',
              idata: Icons.people,
              icolor: Colors.blue,
              msg: '1 New'),
          Divider(
            height: 0.1,
          ),
          ListTileMethod(
              title: 'Promotions',
              subtitle: 'Swiggy,Google Offers',
              idata: Icons.more,
              icolor: Colors.green,
              msg: '5 New'),
          Divider(
            height: 0.1,
          ),
          ListTileMethod(
              title: 'Updates',
              subtitle: 'Google Play',
              idata: Icons.info,
              icolor: Colors.orange,
              msg: '2 New'),
          Divider(
            height: 0.1,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: ExactAssetImage('images/1.jpeg'),
              radius: 20.0,
            ),
            title: Text('Andy Brown'),
            subtitle: Text('Bring your parents to work day'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '1.45 PM',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.star_border,
                ),
              ],
            ),
          ),
          Divider(
            height: 0.1,
          )
        ],
      ),
    );
  }

  ListTile ListTileMethod(
      {String? title,
      String? subtitle,
      IconData? idata,
      Color? icolor,
      String? msg}) {
    return ListTile(
      leading: Icon(
        idata,
        color: icolor,
      ),
      title: Text(
        title!,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle!),
      trailing: Container(
        color: icolor,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Text(
          msg!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
