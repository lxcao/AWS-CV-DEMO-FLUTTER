import 'package:cv_car_mobile_app_layout_flutter/models/vehicle_model.dart';
import 'package:cv_car_mobile_app_layout_flutter/screens/vehicle_location.dart';
import 'package:cv_car_mobile_app_layout_flutter/util/about.dart';
import 'package:cv_car_mobile_app_layout_flutter/util/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScrollScreen extends StatefulWidget {
  final Vehicle vehicle;
  HomeScrollScreen({this.vehicle});

  @override
  _HomeScrollScreenState createState() => _HomeScrollScreenState();
}

class _HomeScrollScreenState extends State<HomeScrollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: Drawer(
        child: ListView(
          children: kAboutListTiles,
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
            snap: false,
            expandedHeight: MediaQuery.of(context).size.height * 0.20,
            backgroundColor: darkBackgroundColor,
            iconTheme: IconThemeData(color: blackAccentColor),
            centerTitle: false,
            title: Text(
              widget.vehicle.mode,
              style: TextStyle(
                  color: darkSecondColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0),
            ),
            actions: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    '更多车辆',
                    style: TextStyle(
                      color: blackAccentColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  IconButton(
                    //padding: EdgeInsets.only(left: 10.0),
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 15.0,
                    color: blackAccentColor,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(top: 120.0, left: 120.0),
              title: Hero(
                tag: widget.vehicle.imageUrl,
                child: Image.asset(widget.vehicle.imageUrl),
              ),
/*               title: Padding(
                padding: EdgeInsets.only(top: 130.0),
                child: Container(
                  child: Image.asset(
                    "assets/images/lamborghini_yellow.png",
                    height: 100,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                ),
              ), */
            ),
          ),
          SliverSafeArea(
            top: false,
            sliver: SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 32),
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 18.0),
                child: Column(
                  children: <Widget>[
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
                            border:
                                Border.all(width: 2.0, color: darkDividerColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
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
                            border:
                                Border.all(width: 2.0, color: darkDividerColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
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
                            border:
                                Border.all(width: 2.0, color: darkDividerColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
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
                            border:
                                Border.all(width: 2.0, color: darkDividerColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.volumeUp),
                            color: blackAccentColor,
                            onPressed: () => print('horn'),
                          ),
                        ),
                      ],
                    ),
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
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
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
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
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
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
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
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
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
                    InkWell(
                      onTap: () => print('更多功能'),
                      child: Card(
                        color: darkCardColor,
                        child: ListTile(
                          title: Text(
                            '更多功能',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
                          ),
                          subtitle: Text(
                            '敬请期待',
                            style: TextStyle(color: darkSecondColor),
                          ),
                          leading: Icon(
                            Icons.more_vert,
                            color: blackAccentColor,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => print('更多功能'),
                      child: Card(
                        color: darkCardColor,
                        child: ListTile(
                          title: Text(
                            '更多功能',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
                          ),
                          subtitle: Text(
                            '敬请期待',
                            style: TextStyle(color: darkSecondColor),
                          ),
                          leading: Icon(
                            Icons.more_vert,
                            color: blackAccentColor,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => print('更多功能'),
                      child: Card(
                        color: darkCardColor,
                        child: ListTile(
                          title: Text(
                            '更多功能',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
                          ),
                          subtitle: Text(
                            '敬请期待',
                            style: TextStyle(color: darkSecondColor),
                          ),
                          leading: Icon(
                            Icons.more_vert,
                            color: blackAccentColor,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => print('更多功能'),
                      child: Card(
                        color: darkCardColor,
                        child: ListTile(
                          title: Text(
                            '更多功能',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blackAccentColor),
                          ),
                          subtitle: Text(
                            '敬请期待',
                            style: TextStyle(color: darkSecondColor),
                          ),
                          leading: Icon(
                            Icons.more_vert,
                            color: blackAccentColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
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
    );
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> kAboutListTiles = <Widget>[
    ListTile(
      leading: kAppIcon,
      title: Text(APP_NAME),
      subtitle: Text(APP_VERSION),
      trailing: IconButton(
        icon: Icon(Icons.info),
        onPressed: () => print('version'),
      ),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.person),
      title: Text(
        '服务顾问',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      onTap: () => print("服务顾问"),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.search),
      title: Text(
        '查找4S店',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      onTap: () => print('查找4S店'),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.message),
      title: Text(
        '预约信息',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      onTap: () => print('预约信息'),
    ),
    Divider(),
    ListTile(
      leading: Icon(Icons.open_in_new),
      title: Text(
        '优惠',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      onTap: () => print('优惠'),
    ),
    Divider(),
    ListTile(
      title: Text('AWS的品牌'),
    ),
    ListTile(
      title: Text('AWS的服务'),
    ),
    ListTile(
      title: Text('关于应用程序及法律条款'),
    ),
    ListTile(
      title: Text('主页'),
    ),
  ];
}
