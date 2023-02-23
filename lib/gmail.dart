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
      drawer: Drawer(
        backgroundColor: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              height: 170.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('images/7.jpeg'),
                      fit: BoxFit.cover)),
              child: Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('images/4.jpg'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Text(
                        'Andy Brown',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Text(
                        'Andybrown@gmail.com',
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
            DrawerListMethod(
                idata: Icons.inbox,
                msg: 'All Inboxes',
                tail: '',
                icolor: Colors.grey.shade200),
            Divider(
              height: 1.8,
            ),
            DrawerListMethod(
                idata: Icons.people,
                msg: 'Primary',
                tail: '99+',
                icolor: Colors.grey.shade200),
            DrawerListMethod(
                idata: Icons.more,
                msg: 'Social',
                tail: '2 New',
                icolor: Colors.blue),
            DrawerListMethod(
                idata: Icons.star,
                msg: 'Promotions',
                tail: '',
                icolor: Colors.grey.shade200),
            Divider(
              height: 1.8,
            ),
            DrawerListMethod(
                idata: Icons.alarm,
                msg: 'Starred',
                tail: '2',
                icolor: Colors.grey.shade200),
            DrawerListMethod(
                idata: Icons.play_arrow,
                msg: 'Snoozed',
                tail: '',
                icolor: Colors.grey.shade200),
            DrawerListMethod(
                idata: Icons.mail_outline,
                msg: 'Important',
                tail: '99',
                icolor: Colors.grey.shade200),
            DrawerListMethod(
                idata: Icons.bookmark,
                msg: 'Sent',
                tail: '9',
                icolor: Colors.grey.shade200),
            DrawerListMethod(
                idata: Icons.insert_drive_file,
                msg: 'Outbox',
                tail: '',
                icolor: Colors.grey.shade200),
            DrawerListMethod(
                idata: Icons.error,
                msg: 'Spam',
                tail: '23',
                icolor: Colors.grey.shade200),
            DrawerListMethod(
                idata: Icons.settings,
                msg: 'Settings',
                tail: '',
                icolor: Colors.grey.shade200),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 189, 69, 32),
        onPressed: () {
          print('Compose Mail');
        },
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            inboxmethod(
                url: 'images/2.jpg',
                title: 'Periklis Nana',
                subtitle: 'Pantone is a colour also the singular ',
                time: '10:15 PM',
                isunread: false),
            Divider(
              height: 0.1,
            ),
            inboxmethod(
                url: 'images/3.jpg',
                title: 'Matthaios Grigorios',
                subtitle: "I don't need a big house ",
                time: 'Yesterday',
                isunread: true),
            Divider(
              height: 0.1,
            ),
            inboxmethod(
                url: 'images/4.jpg',
                title: 'Thekla Prokopis',
                subtitle: "I never had a fear of heights ",
                time: 'Mar 29',
                isunread: true),
            Divider(
              height: 0.1,
            ),
            inboxmethod(
                url: 'images/5.jpeg',
                title: 'Konstantinos Prokopios',
                subtitle: "You know the Grammys are a joke ",
                time: '2:00 AM',
                isunread: true),
            Divider(
              height: 0.1,
            ),
            inboxmethod(
                url: 'images/6.jpeg',
                title: 'Evangelos',
                subtitle: 'A tagline for a car company that prides ',
                time: 'Yesterday',
                isunread: true),
            Divider(
              height: 0.1,
            ),
            inboxmethod(
                url: 'images/8.jpg',
                title: 'Vasso Marika',
                subtitle: 'We need more werkin and less twerkin ',
                time: '5:00 PM',
                isunread: false),
            Divider(
              height: 0.1,
            ),
            inboxmethod(
                url: 'images/9.jpeg',
                title: 'Christina Valentina',
                subtitle: "I'm in a band that does Metallica covers ",
                time: '11:00 AM',
                isunread: false),
            Divider(
              height: 0.1,
            ),
            inboxmethod(
                url: 'images/10.jpg',
                title: 'kariklis Nana',
                subtitle: 'North America should be called Russia ',
                time: 'Feb 11',
                isunread: false),
            Divider(
              height: 0.1,
            ),
          ],
        ),
      ),
    );
  }

  ListTile DrawerListMethod(
      {IconData? idata, String? msg, String? tail, Color? icolor}) {
    return ListTile(
        leading: Icon(idata),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              msg!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              color: icolor,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text(
                tail!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: icolor == Colors.grey.shade200
                        ? Colors.black
                        : Colors.white),
              ),
            )
          ],
        ));
  }

  ListTile inboxmethod(
      {String? url,
      String? title,
      String? subtitle,
      String? time,
      bool? isunread}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: ExactAssetImage(url!),
        radius: 20.0,
      ),
      title: Text(
        title!,
        style: TextStyle(
            fontWeight: isunread! ? FontWeight.bold : FontWeight.normal),
      ),
      subtitle: Text(subtitle!),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            time!,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.star_border,
          ),
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
