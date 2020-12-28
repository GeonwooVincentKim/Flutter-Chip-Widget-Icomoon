import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String title;
  int pageIndex = 0;
  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true
  );

  Widget _buildAppBar(){
    return AppBar(
      centerTitle: true,
      bottom: TabBar(
        tabs: _buildTabBarItem(),

      )
    );
  }


  Widget _buildBody(){
    return PageView(
      controller: _pageController,
      children: [
        // FirstPage(pageIndex: pageIndex, title: "")
      ]
    );
  }

  Widget _buildBottomNavigationBar(context){
    return PageView(
      
    );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }
}