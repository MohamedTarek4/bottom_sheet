import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myHomePage extends StatelessWidget {
  var _theme = Colors.white;
  var _themewhite = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("buttom sheet".toUpperCase()),
      ),
      // backgroundColor: _theme,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Click on the buttom",
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            RaisedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 120,
                    color: Colors.grey[400],
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title: Text("Light theme".toLowerCase()),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            _theme = Colors.white;
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title: Text("dark theme".toLowerCase()),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            _theme = Colors.black;
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text(
                "click".toUpperCase(),
                style: TextStyle(
                  color: _theme == _themewhite ? Colors.white : Colors.black,
                ),
              ),
              color: _theme == _themewhite ? Colors.black : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
