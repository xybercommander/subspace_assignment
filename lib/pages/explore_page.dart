import 'dart:math';

import 'package:flutter/material.dart';
import 'package:subspace_assignment/widgets/carousel_widget.dart';
import 'package:subspace_assignment/widgets/earn_coin_widget.dart';
import 'package:subspace_assignment/widgets/public_groups.dart';
import 'package:subspace_assignment/widgets/see_more_row.dart';
import 'package:subspace_assignment/widgets/show_public_groups_button.dart';
import 'package:subspace_assignment/widgets/subscriptions_list.dart';
import 'package:subspace_assignment/widgets/suggestion_box.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),

      appBar: AppBar(
        title: Text("Explore", style: TextStyle(fontSize: 24),),
        backgroundColor: Color(0xff1B1B1B),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(42),
                  color: Colors.grey[800]
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                width: 40,
                height: 40,            
                child: Container(
                  width: 30,
                  height: 30,            
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 53, 105, 196)
                  ),
                  child: Icon(Icons.emoji_events),
                ),
              ),
            ],
          ),
           Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(42),
                  color: Colors.grey[800]
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                width: 40,
                height: 40,            
                child: Container(
                  width: 30,
                  height: 30,            
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 53, 105, 196)
                  ),
                  child: Icon(Icons.shopping_cart),
                ),
              ),
            ],
          ),
          SizedBox(width: 4,)
        ],
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              EarnCoinWidget(),
              CarouselWidget(),
              SeeMoreRow(title: "All Subscriptions",),
              SizedBox(height: 12,),
              SubscriptionsList(),
              SizedBox(height: 12,),
              SeeMoreRow(title: "Public Groups",),              
              PublicGroupsList(),
              ShowPublicGroupsButton(),
              SizedBox(height: 12,),
              SuggestionBox(),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}


