import 'package:flutter/material.dart';


class FirstPage extends StatefulWidget {
  final int pageIndex;
  final String pageTitle;
  final Function pageInfo;

  FirstPage({
    @required this.pageIndex,
    @required this.pageTitle,
    @required this.pageInfo
  });
  
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Widget _buildFirstPageBody(){
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
        itemBuilder: (context, index) => Text("First One")
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildFirstPageBody(),
      // drawer: SideMenu(),
    );
  }
}