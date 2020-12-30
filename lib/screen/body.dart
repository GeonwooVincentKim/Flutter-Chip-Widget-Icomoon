import 'package:chip_widget_icomoon/screen/page/first_page.dart';
import 'package:chip_widget_icomoon/screen/page/fourth_page.dart';
import 'package:chip_widget_icomoon/screen/page/second_page.dart';
import 'package:chip_widget_icomoon/screen/page/third_page.dart';
import 'package:chip_widget_icomoon/shared/design/icomoon.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin{
  String title;
  int pageIndex = 0;
  TabController tabController;
  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true
  );

   @override
  void initState(){
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  Widget _buildAppTapBar(){
    return AppBar(
      centerTitle: true,
      bottom: TabBar(
        tabs: _buildTabBarItem(),
        controller: tabController,
        onTap: (index) => _tapBottom(index),
      )
    );
  }

  Widget _buildBody(){
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        FirstPage(pageIndex: pageIndex, pageTitle: "First Page", pageInfo: _buildBottomNavigationBar, pageAppBarInfo: _buildAppTapBar),
        SecondPage(pageIndex: pageIndex, pageTitle: "Second Page", pageInfo: _buildBottomNavigationBar, pageAppBarInfo: _buildAppTapBar),
        ThirdPage(pageIndex: pageIndex, pageTitle: "Third Page", pageInfo: _buildBottomNavigationBar),
        FourthPage(pageIndex: pageIndex, pageTitle: "Fourth Page", pageInfo: _buildBottomNavigationBar)
      ]
    );
  }

  Widget _buildBottomNavigationBar(context){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) => _tapBottom(index),
      currentIndex: pageIndex,
      items: _buildBottomNavigationBarItem(),
      iconSize: 45,
      selectedItemColor: Colors.white,
      backgroundColor: Theme.of(context).primaryColor
    );
  }

  void _tapBottom(int index){
    // setState(() => _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease));
    setState(() {
      pageIndex = index;
      // _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

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

  List<BottomNavigationBarItem> _buildBottomNavigationBarItem(){
    return [
      BottomNavigationBarItem(
        icon: Icon(IconMoon.imenu),
        title: Text("Main Menu")
      ),
      BottomNavigationBarItem(
        icon: Icon(IconMoon.iuser),
        title: Text("Account")
      ),
      BottomNavigationBarItem(
        icon: Icon(IconMoon.iusers),
        title: Text("Your Orders")
      ),
      BottomNavigationBarItem(
        icon: Icon(IconMoon.inotification),
        title: Text("More")
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _buildAppTapBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }
}