import 'package:flutter/material.dart';

class SuggestionBox extends StatefulWidget {
  const SuggestionBox({Key? key}) : super(key: key);

  @override
  State<SuggestionBox> createState() => _SuggestionBoxState();
}

class _SuggestionBoxState extends State<SuggestionBox> {
  TextEditingController suggestionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xff2A2A2A)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What do you want us to list next?",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "Suggest us a subscription",
            style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "Quicksand-Medium"),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                // margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  controller: suggestionController,                       
                  style: TextStyle(color: Colors.grey[300], fontSize: 18),   
                  decoration: InputDecoration(
                    hintText: "Give your suggestion",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),                                
                      borderSide: BorderSide(color: Colors.grey[800]!)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[800]!)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[800]!)
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8,),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.send, size: 30, color: Colors.white,)
              )
            ],
          )
        ],
      ),
    );
  }
}