import 'package:chip_widget_icomoon/screen/side/sidemenu.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  final int pageIndex;
  final String pageTitle;
  final Function pageInfo;
  final Function pageAppBarInfo;
  
  SecondPage({
    @required this.pageIndex,
    @required this.pageTitle,
    @required this.pageInfo,
    @required this.pageAppBarInfo
  });

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Widget _buildSecondPageAppBar(){
    return AppBar(
      title: Text(widget.pageTitle),
      centerTitle: true,
      actions: [

      ],
      // bottom: TabBar(
      //   tabs: _buildTabBarItem(),
      //   controller: _tabController,
      //   onTap: (index) => _tapTabBar(index),
      // )
    );
  }

  Widget _buildSecondPageBody(){
    return Container(
      padding: EdgeInsets.all(20.0),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.8,
          mainAxisSpacing: 0.8,
        ),
        // itemBuilder: (context, index) =>
        itemBuilder: (context, index) => Text("Second One")
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildSecondPageAppBar(),
      body: _buildSecondPageBody(),
      drawer: SideMenu(),
    );
  }
}