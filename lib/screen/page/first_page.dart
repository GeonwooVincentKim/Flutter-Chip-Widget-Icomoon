import 'package:chip_widget_icomoon/screen/page/first_sub_page/first_sub_page.dart';
import 'package:chip_widget_icomoon/screen/page/first_sub_page/fourth_sub_page.dart';
import 'package:chip_widget_icomoon/screen/page/first_sub_page/second_sub_page.dart';
import 'package:chip_widget_icomoon/screen/page/first_sub_page/third_sub_page.dart';
import 'package:chip_widget_icomoon/screen/side/sidemenu.dart';
import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  final int pageIndex;
  final String pageTitle;
  final Function pageInfo;
  final Function pageAppBarInfo;

  FirstPage({
    @required this.pageIndex,
    @required this.pageTitle,
    @required this.pageInfo,
    @required this.pageAppBarInfo
  });
  
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int subPageIndex = 0;

  @override
  void initState(){
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  Widget _buildFirstPageAppBar(){
    return AppBar(
      title: Text(widget.pageTitle),
      centerTitle: true,
      actions: [

      ],
      bottom: TabBar(
        tabs: _buildTabBarItem(),
        controller: _tabController,
        // onTap: (index) => _tapTabBar(index),
      )
    );
  }

  // void _tapTabBar(int index){
    // setState(() {
    //   subPageIndex = index;
    // });
  // setState(() => _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease));
  //  setState(() {
  //    subPageIndex = index;
      // _tabController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
  //   });
  // }

  List<Tab> _buildTabBarItem(){
    return [
      Tab(
        icon: Icon(Icons.fastfood),
        text: "Hamburger"
      ),
      Tab(
        icon: Icon(Icons.local_cafe),
        text: "Cafe",
      ),
      Tab(
        icon: Icon(Icons.local_dining),
        text: "Morning"
      ),
      Tab(
        icon: Icon(Icons.cake),
        text: "Dessert"
      )
    ];
  }

  Widget _buildFirstPageBody(){
    return TabBarView(
      controller: _tabController,
      children: [
        FirstSubPage(subPageIndex: subPageIndex),
        SecondSubPage(subPageIndex: subPageIndex),
        ThirdSubPage(subPageIndex: subPageIndex),
        FourthSubPage(subPageIndex: subPageIndex),
      ],
    );
    // return Container(
    //   padding: EdgeInsets.all(20.0),
    //   child: GridView.builder(
    //     shrinkWrap: true,
    //     itemCount: 10,
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 2,
    //       crossAxisSpacing: 0.8,
    //       mainAxisSpacing: 0.8,
    //     ),
    //     // itemBuilder: (context, index) =>
    //     itemBuilder: (context, index) => Text("First One")
    //   )
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildFirstPageAppBar(),
      body: _buildFirstPageBody(),
      drawer: SideMenu(),
    );
  }
}