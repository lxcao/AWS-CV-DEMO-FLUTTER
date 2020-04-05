import 'package:cv_car_mobile_app_layout_flutter/util/about.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key key}) : super(key: key);

  static final List<Widget> kAboutListTiles = <Widget>[
    ListTile(
      title: Text("AWS"),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('张国庆'),
      onTap: () => print("个人"),
    ),
    ListTile(
      leading: Icon(Icons.search),
      title: Text('查找4S店'),
      onTap: () => print('查找4S店'),
    ),
    ListTile(
      leading: Icon(Icons.message),
      title: Text('预约信息'),
      onTap: () => print('预约信息'),
    ),
    ListTile(
      leading: Icon(Icons.open_in_new),
      title: Text('优惠'),
      onTap: () => print('优惠'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final header = ListTile(
      leading: kAppIcon,
      title: Text(APP_NAME),
      subtitle: Text(APP_VERSION),
      trailing: IconButton(
        icon: Icon(Icons.info),
        onPressed: () {
          showAboutDialog(
              context: context,
              applicationName: APP_NAME,
              applicationVersion: APP_VERSION,
              applicationIcon: kAppIcon,
              children: <Widget>[Text(APP_DESCRIPTION)]);
        },
      ),
    );
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: header,
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
            ),
          ),
          //...kAboutListTiles,
        ],
      ),
    );
  }
}
