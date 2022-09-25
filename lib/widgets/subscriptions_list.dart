import 'package:flutter/material.dart';

class SubscriptionsList extends StatefulWidget {
  const SubscriptionsList({Key? key}) : super(key: key);

  @override
  State<SubscriptionsList> createState() => _SubscriptionsListState();
}

class _SubscriptionsListState extends State<SubscriptionsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
        itemCount: subscriptionObjects.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(right: 8),
          width: 180,
          height: 180,
          child: Stack(
            children: [
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(subscriptionObjects[index]['img']),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black87, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                    )
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff00897B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5)
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("UPTO", style: TextStyle(color: Colors.white, fontFamily: "Quicksand-Medium", fontSize: 12),),
                    Text("${subscriptionObjects[index]['discount']} %", style: TextStyle(color: Colors.white, fontSize: 16),),
                    Text("OFF", style: TextStyle(color: Colors.white, fontFamily: "Quicksand-Medium", fontSize: 12),),
                  ],
                )
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 48,
                  width: 48,
                  padding: EdgeInsets.all(1),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60)
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(subscriptionObjects[index]['icon']),
                    radius: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subscriptionObjects[index]['site'], style: TextStyle(color: Colors.white, fontSize: 16),),
                    Text(
                      "Starting at ₹" + subscriptionObjects[index]['price'].toString(), 
                      style: TextStyle(color: Colors.yellow, fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}


List<Map<String, dynamic>> subscriptionObjects = [
  {
    "site": "Amazon Prime",
    "price": 240,
    "icon": "assets/icons/prime.png",
    "img": "assets/images/theboys.jpg",
    "discount": 15
  },
  {
    "site": "Netflix",
    "price": 500,
    "icon": "assets/icons/netflix.png",
    "img": "assets/images/rnm.jpg",
    "discount": 17
  },
  {
    "site": "Hulu",
    "price": 340,
    "icon": "assets/icons/hulu.png",
    "img": "assets/images/hulu.jpg",
    "discount": 12
  },
  {
    "site": "Disney+",
    "price": 250,
    "icon": "assets/icons/disney.jpg",
    "img": "assets/images/loki.jpeg",
    "discount": 15
  },
  {
    "site": "Sony Liv",
    "price": 140,
    "icon": "assets/icons/sony.png",
    "img": "assets/images/ucl.jpg",
    "discount": 30
  },
  {
    "site": "Voot",
    "price": 440,
    "icon": "assets/icons/voot.png",
    "img": "assets/images/voot.jpg",
    "discount": 5
  }
];