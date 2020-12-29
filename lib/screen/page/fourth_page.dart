import 'package:flutter/material.dart';


class FourthPage extends StatefulWidget {
  final int pageIndex;
  final String pageTitle;
  final Function pageInfo;

  FourthPage({
    @required this.pageIndex,
    @required this.pageTitle,
    @required this.pageInfo
  });
  
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  Widget _buildFourthPageBody(){
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
        itemBuilder: (context, index) => Text("Fourth One")
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildFourthPageBody(),
      // drawer: SideMenu(),
    );
  }
}