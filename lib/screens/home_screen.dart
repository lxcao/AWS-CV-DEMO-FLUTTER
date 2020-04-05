import 'package:cv_car_mobile_app_layout_flutter/screens/vehicle_location.dart';
import 'package:cv_car_mobile_app_layout_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List<bool> _selections = List.generate(4, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 32),
        padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 18.0),
/*         decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [darkDividerColor, darkBackgroundColor],
          ),
        ), */
        child: Column(
          children: <Widget>[
/*             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '您好，国庆',
                  style: TextStyle(
                    color: blackAccentColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Lamborghini',
                      style: TextStyle(
                        color: blackAccentColor,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15.0,
                      color: blackAccentColor,
                    ),
                  ],
                ),
              ],
            ), 
            SizedBox(
              height: 30.0,
            ),*/
            Image.asset(
              "assets/images/lamborghini_yellow.png",
              //color: darkDividerColor,
              //colorBlendMode: BlendMode.darken,
              height: 100,
              width: 300,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.gasPump,
                      //FontAwesomeIcons.gasPump,
                      size: 30.0,
                      color: blackAccentColor,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: blackAccentColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: '20',
                              ),
                              TextSpan(
                                text: '升',
                                style: TextStyle(
                                  color: blackAccentColor,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '剩余油量',
                          style: TextStyle(
                            color: darkSecondColor,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              color: blackAccentColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: '178',
                              ),
                              TextSpan(
                                text: '公里',
                                style: TextStyle(
                                  color: blackAccentColor,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '剩余里程',
                          style: TextStyle(
                            color: darkSecondColor,
                            fontSize: 10.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      FontAwesomeIcons.tachometerAlt,
                      size: 30.0,
                      color: blackAccentColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: darkDividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.lock),
                    color: blackAccentColor,
                    onPressed: () => print('lock'),
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: darkDividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.lockOpen),
                    color: blackAccentColor,
                    onPressed: () => print('unlock'),
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: darkDividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.lightbulb),
                    color: blackAccentColor,
                    onPressed: () => print('light'),
                  ),
                ),
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: darkDividerColor),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.volumeUp),
                    color: blackAccentColor,
                    onPressed: () => print('horn'),
                  ),
                ),
              ],
            ),
/*             ToggleButtons(
              //renderBorder: false,
              borderColor: darkDividerColor,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              fillColor: darkCardColor,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 30.0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.lock,
                    color: blackAccentColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 30.0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.lockOpen,
                    color: blackAccentColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 30.0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.lightbulb,
                    color: blackAccentColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 30.0,
                  ),
                  child: Icon(
                    FontAwesomeIcons.volumeUp,
                    color: blackAccentColor,
                  ),
                ),
              ],
              isSelected: _selections,
              onPressed: (int index) {
                setState(() {
                  //_selections[index] = !_selections[index];
                  for (int buttonIndex = 0;
                      buttonIndex < _selections.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      _selections[buttonIndex] = !_selections[buttonIndex];
                    } else {
                      _selections[buttonIndex] = false;
                    }
                  }
                });
              },
            ), */
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => VehicleLocation()),
                ),
              },
              child: Card(
                color: darkCardColor,
                child: ListTile(
                  title: Text(
                    '车辆位置',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: blackAccentColor),
                  ),
                  subtitle: Text(
                    '中国上海市浦东新区',
                    style: TextStyle(color: darkSecondColor),
                  ),
                  leading: Icon(
                    FontAwesomeIcons.searchLocation,
                    color: blackAccentColor,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => print('立即通风'),
              child: Card(
                color: darkCardColor,
                child: ListTile(
                  title: Text(
                    '立即通风',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: blackAccentColor),
                  ),
                  subtitle: Text(
                    '立刻降低您车内的温度',
                    style: TextStyle(color: darkSecondColor),
                  ),
                  leading: Icon(
                    FontAwesomeIcons.fan,
                    color: blackAccentColor,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => print('预约通风'),
              child: Card(
                color: darkCardColor,
                child: ListTile(
                  title: Text(
                    '预约通风',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: blackAccentColor),
                  ),
                  subtitle: Text(
                    '定时降低您车内的温度',
                    style: TextStyle(color: darkSecondColor),
                  ),
                  leading: Icon(
                    FontAwesomeIcons.history,
                    color: blackAccentColor,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => print('3D视图'),
              child: Card(
                color: darkCardColor,
                child: ListTile(
                  title: Text(
                    '3D视图',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: blackAccentColor),
                  ),
                  subtitle: Text(
                    '查看您车周围的环境',
                    style: TextStyle(color: darkSecondColor),
                  ),
                  leading: Icon(
                    FontAwesomeIcons.streetView,
                    color: blackAccentColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: darkBackgroundColor,
        unselectedItemColor: blackAccentColor,
        selectedItemColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.car),
            title: Text('车辆'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            title: Text('目的地'),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.businessTime),
            title: Text('事宜'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('社交'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text('更多'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        backgroundColor: darkBackgroundColor,
        iconTheme: IconThemeData(color: blackAccentColor),
        centerTitle: false,
        title: Text(
          '您好国庆',
          style: TextStyle(
              color: darkSecondColor,
              fontWeight: FontWeight.bold,
              fontSize: 12.0),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Lamborghini',
                style: TextStyle(
                  color: blackAccentColor,
                ),
              ),
              SizedBox(
                width: 15.0,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15.0,
                color: blackAccentColor,
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ],
/*         leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.dashboard,
              color: blackAccentColor,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }), */
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Text('data'),
      ),
    );
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class HomeBuilder {
  static Widget homeDrawer() {
    return new ListView(padding: const EdgeInsets.only(), children: <Widget>[
      _drawerHeader(),
      new ClipRect(
        child: new ListTile(
          leading: new CircleAvatar(child: new Text("A")),
          title: new Text('Drawer item A'),
          onTap: () => {},
        ),
      ),
      new ListTile(
        leading: new CircleAvatar(child: new Text("B")),
        title: new Text('Drawer item B'),
        subtitle: new Text("Drawer item B subtitle"),
        onTap: () => {},
      ),
      new AboutListTile(
        icon: new CircleAvatar(child: new Text("Ab")),
        child: new Text("About"),
        applicationName: "Test",
        applicationVersion: "1.0",
        applicationIcon: new Image.asset(
          "images/ymj_jiayou.gif",
          width: 64.0,
          height: 64.0,
        ),
        applicationLegalese: "applicationLegalese",
        aboutBoxChildren: <Widget>[
          new Text("BoxChildren"),
          new Text("box child 2")
        ],
      ),
    ]);
  }

  static Widget _drawerHeader() {
    return new UserAccountsDrawerHeader(
//      margin: EdgeInsets.zero,
      accountName: new Text(
        "SuperLuo",
        //style: HStyle.titleNav(),
      ),
      accountEmail: new Text(
        "super_luo@163.com",
        //style: HStyle.bodyWhite(),
      ),
      currentAccountPicture: new CircleAvatar(
        backgroundImage: new AssetImage("images/ymj_jiayou.gif"),
      ),
      onDetailsPressed: () {},
      otherAccountsPictures: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage("images/ymj_shuijiao.gif"),
        ),
      ],
    );
  }
}
