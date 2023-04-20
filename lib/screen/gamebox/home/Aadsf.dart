import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget implements PreferredSizeWidget {
  dynamic controller;

  MyTabBar({Key? key, this.controller}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyTabBarState();
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyTabBarState extends State<MyTabBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        controller: widget.controller,
        tabs: [
          GestureDetector(
            onTap: () {
              // Handle tab 1 tap
              print('Tab 1 tapped');
            },
            child: Tab(
              text: 'Tab 1',
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle tab 2 tap
              print('Tab 2 tapped');
            },
            child: Tab(
              text: 'Tab 2',
            ),
          ),
        ],
      ),
    );
  }
}
