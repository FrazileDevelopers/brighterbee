


import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      drawer: (){},
      appBar: AppBar(title: Text("Brighterbee"),
      ),
      body: gridoptions(),
    );
  }
}
class gridoptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
//          clipper: WaveClipperTwo(),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            height: 200,
          ),
        ),
          CustomScrollView(
          physics: BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverToBoxAdapter(
     child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
     child: Text("Select a topic", style: TextStyle(
     color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16.0),
      ) ,
     ),
    ),

      ],
          ),

        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
//            delegate: SliverChildBuilderDelegate(
//
//            ),
          ),
        )
    ],
    );
  }
}

