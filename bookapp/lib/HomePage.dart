import 'package:flutter/material.dart';
import 'package:bookapp/custom_tab_indicator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: 
        ListView(
          children: <Widget> [
          Padding(padding: EdgeInsets.only(top: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
          Text('Hi Chilkut,',
          style: TextStyle(
          backgroundColor: Colors.yellowAccent,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
           ),
          ),

          Text('Discover latest books',
          style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          ),
          ),

            ],
          ),

           ),
          
          Container(
            height: 39,
            margin: EdgeInsets.only(top: 18, left: 25, right: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: Stack(
              children: <Widget> [
                TextField(
                  // ignore: deprecated_member_use
                  maxLengthEnforced: true,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),

                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 19, right: 50, bottom: 8),
                    border: InputBorder.none,
                    hintText: 'Search here...',
                    hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 25,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.only(left: 25),
            child: DefaultTabController(length: 3,
            child: TabBar(

            labelPadding: EdgeInsets.only(top: 0),
            indicatorPadding: EdgeInsets.only(top: 0),
            isScrollable: true,
            labelColor: Colors.redAccent,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
            indicator: RoundedRectangleTabIndicator(
              weight: 2,
              width: 10,
              color: Colors.black,
            ),
            tabs: [

              Tab(
                child: Container(
                  margin: EdgeInsets.only(right: 25),
                  child: Text('New'),
                ),
              ),

            Tab(
              child: Container(
                margin: EdgeInsets.only(right: 25),
                child: Text('Trending'),
              ),
            ),
           
           Tab(
             child: Container(
               margin: EdgeInsets.only(right: 25),
               child: Text('Best Seller'),
             ),
           ),


            ]
            ),
            ),

          ),
          
          Container(
            margin: EdgeInsets.only(top: 21),
            height: 210,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 25, right: 6),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
              return Container(
              height: 210,
              width: 153,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.pinkAccent,
                image: DecorationImage(image: AssetImage('assets/search.png'))
              ),
              );
            }
          ),
          ),


          ]
        ),
      ),
      
    );
  }
}