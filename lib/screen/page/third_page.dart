import 'package:flutter/material.dart';


class ThirdPage extends StatefulWidget {
  final int pageIndex;
  final String pageTitle;
  final Function pageInfo;

  ThirdPage({
    @required this.pageIndex,
    @required this.pageTitle,
    @required this.pageInfo
  });

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Widget _buildThirdPageBody(){
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
        itemBuilder: (context, index) => Text("Third One")
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildThirdPageBody(),
      // drawer: SideMenu(),
    );
  }
}