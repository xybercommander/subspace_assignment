import 'package:flutter/material.dart';

class SeeMoreRow extends StatelessWidget {
  final String? title;
  const SeeMoreRow({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title!, style: TextStyle(fontSize: 20, color: Colors.grey[600]),),
          Container(
            width: 90,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF343434),
                  const Color(0xFF404040),
                ],
              )
            ),
            child: Center(
              child: Text("See More", style: TextStyle(fontSize: 16, color: Colors.yellow[600]),)
            ),
          ),
        ],
      ),
    );
  }
}