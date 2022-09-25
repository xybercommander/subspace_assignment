import 'package:flutter/material.dart';

class ShowPublicGroupsButton extends StatefulWidget {
  const ShowPublicGroupsButton({Key? key}) : super(key: key);

  @override
  State<ShowPublicGroupsButton> createState() => _ShowPublicGroupsButtonState();
}

class _ShowPublicGroupsButtonState extends State<ShowPublicGroupsButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(                  
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            Colors.orange, Colors.white, Colors.green
          ]
        )
      ),
      child: Container(
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(                  
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[900]
        ),
        child: Center(
          child: Text(
            "Show All Public Groups", 
            style: TextStyle(color: Colors.grey[600], fontSize: 18),
          ),
        ),
      ),
    );
  }
}