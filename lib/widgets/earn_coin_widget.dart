import 'package:flutter/material.dart';

class EarnCoinWidget extends StatelessWidget {
  const EarnCoinWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      padding: EdgeInsets.symmetric(horizontal: 18),
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey.shade700, width: 2),
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF000B19),
            const Color(0xFF00172D),
          ],
        )
      ),
      child: Row(        
        children: [
          Container(
            width: 30,
            height: 30,            
            decoration: BoxDecoration(
              color: Colors.yellow[600],
              borderRadius: BorderRadius.circular(40)
            ),
            child: Center(child: Text("\$", style: TextStyle(fontSize: 18, color: Colors.yellow[900]),)),
          ),
          SizedBox(width: 12,),
          Text("Play and earn coins", style: TextStyle(fontSize: 20, color: Colors.white),),
          Spacer(),
          Image.asset("assets/icons/fast-forward.png", color: Colors.white, height: 30, width: 30,)
        ],
      ),
    );
  }
}