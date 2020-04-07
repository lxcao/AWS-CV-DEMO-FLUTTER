import 'dart:io';

import 'package:cv_car_mobile_app_layout_flutter/models/vehicle_model.dart';
import 'package:cv_car_mobile_app_layout_flutter/screens/home_scroll_screen.dart';
import 'package:cv_car_mobile_app_layout_flutter/util/about.dart';
import 'package:cv_car_mobile_app_layout_flutter/util/colors.dart';
import 'package:flutter/material.dart';

class CoverScreen extends StatefulWidget {
  @override
  _CoverScreenState createState() => _CoverScreenState();
}

enum Vehicles { bmw_x5, benz_gls, porsche_cayenne, audi_q7, lr_rangerover }

class _CoverScreenState extends State<CoverScreen> {
  String dropdownValue = '001';

  static Map<Vehicles, String> _vehiclesImages = {
    Vehicles.bmw_x5: 'assets/images/BMW-X5.png',
    Vehicles.benz_gls: 'assets/images/Benz-GLS.png',
    Vehicles.porsche_cayenne: 'assets/images/Porsche-Cayenne.png',
    Vehicles.audi_q7: 'assets/images/Audi-Q7.png',
    Vehicles.lr_rangerover: 'assets/images/landrover-rangerover.png'
  };

  Widget _buildPage({String png}) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: Image.asset(png, fit: BoxFit.cover, height: 150.0),
    );
  }

  Widget _buildPageView() {
    return PageView(
      children: <Widget>[
        _buildPage(png: _vehiclesImages[Vehicles.bmw_x5]),
        _buildPage(png: _vehiclesImages[Vehicles.benz_gls]),
        _buildPage(png: _vehiclesImages[Vehicles.porsche_cayenne]),
        _buildPage(png: _vehiclesImages[Vehicles.audi_q7]),
        _buildPage(png: _vehiclesImages[Vehicles.lr_rangerover]),
      ],
    );
  }

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _vehicleSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => HomeScrollScreen(
                      vehicle: vehicles[index],
                    )),
          ),
        },
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: vehicles[index].imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(vehicles[index].imageUrl),
                        //height: 400.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: Container(
                width: 250.0,
                child: Text(
                  vehicles[index].description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [darkDividerColor, blackBackgroundColor],
          ),
        ),
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 35.0),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: blackAccentColor,
                ),
                onPressed: () => exit(0),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            cAppIcon,
            SizedBox(
              height: 10.0,
            ),
            Text(
              '车联网演示',
              style: TextStyle(
                  fontSize: 54,
                  fontWeight: FontWeight.bold,
                  color: blackAccentColor),
            ),
/*            Row(
              children: <Widget>[
                Text(
                  '请选择演示车辆',
                  style: TextStyle(color: blackAccentColor, fontSize: 25.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                 DropdownButton<String>(
                  value: dropdownValue,
                  style: TextStyle(
                    color: blackPrimaryColor,
                  ),
                  items: <String>['001', '002', '003', '004', '005']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: blackPrimaryColor),
                      ),
                    );
                  }).toList(),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                ), 
              ],
            ),*/
            //Image.asset(_vehiclesImages[Vehicles.bmw_x5],fit: BoxFit.cover, height: 150.0),
            //_buildPageView(),
            Container(
              height: 400.0,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                itemCount: vehicles.length,
                itemBuilder: (BuildContext context, int index) {
                  return _vehicleSelector(index);
                },
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.white,
            ),
            SizedBox(height: 80.0),
            Text(
              '有任何问题请随时联系工作人员',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30.0),
/*             InkWell(
              child: Container(
                width: 80.0,
                height: 80.0,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: darkDividerColor),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: blackAccentColor,
                  size: 40.0,
                ),
              ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => HomeScrollScreen()),
                ),
              },
            ) */
          ],
        ),
      ),
    );
  }
}
