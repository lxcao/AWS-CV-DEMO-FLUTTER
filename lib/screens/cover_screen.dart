import 'package:cv_car_mobile_app_layout_flutter/screens/home_scroll_screen.dart';
import 'package:cv_car_mobile_app_layout_flutter/util/colors.dart';
import 'package:flutter/material.dart';

class CoverScreen extends StatefulWidget {
  @override
  _CoverScreenState createState() => _CoverScreenState();
}

class _CoverScreenState extends State<CoverScreen> {
  String dropdownValue = '001';

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
                onPressed: () {},
              ),
            ),
            Text(
              'AWS\n车联网演示',
              style: TextStyle(
                  fontSize: 45.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.0),
            Row(
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
            ),
            SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '不同的演示车辆有不一样的演示功能呦',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Image.asset('assets/images/porsche.png',
                fit: BoxFit.cover, height: 250.0),
            Container(
              height: 0.5,
              color: Colors.white,
            ),
            SizedBox(height: 30.0),
            Text(
              '有任何问题请随时联系工作人员',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30.0),
            InkWell(
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
            )
          ],
        ),
      ),
    );
  }
}
