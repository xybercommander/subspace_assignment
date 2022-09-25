import 'package:flutter/material.dart';

class PublicGroupsList extends StatefulWidget {
  const PublicGroupsList({Key? key}) : super(key: key);

  @override
  State<PublicGroupsList> createState() => _PublicGroupsListState();
}

class _PublicGroupsListState extends State<PublicGroupsList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.6,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 8),
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: groups.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            // padding: EdgeInsets.symmetric(horizontal: 8),
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xff2B2B2B),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4.0),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(groups[index]['icon']),
                                  backgroundColor: Colors.white60,
                                  radius: 25,
                                ),
                              ),
                              CircleAvatar(
                                backgroundImage: NetworkImage(groups[index]['owner_img']),
                                backgroundColor: Colors.white60,
                                radius: 12,
                              ),
                            ],
                          ),
                          SizedBox(width: 8,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  groups[index]['plan'],
                                  style: TextStyle(color: Colors.white, fontSize: 18),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "by " + groups[index]['owner'],
                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                ),
                                Text(
                                  groups[index]['total'].toString() + "/" + groups[index]['full'].toString() + " friends sharing",
                                  style: TextStyle(color: Color(0xff8197BA), fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹${groups[index]['price']} / User / ${groups[index]['interval']}",
                                style: TextStyle(color: Colors.grey[400], fontSize: 12),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 2 - 60,
                                child: MaterialButton(
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                  color: Color(0xff3F51B5),                            
                                  child: Text("Join", style: TextStyle(color: Colors.white),),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            )
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * (groups[index]['total'] / groups[index]['full']),                                
                          height: 6,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 53, 105, 196),
                            borderRadius: BorderRadius.only(
                              topRight: groups[index]['total'] != groups[index]['full']
                                  ? Radius.circular(5) : Radius.circular(0),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 70,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff00897B),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),                    
                  ),
                  child: Center(
                    child: Text(
                      "${groups[index]['number']}+ groups",
                      style: TextStyle(color: Colors.white, fontSize: 11),        
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> groups = [
  {
    "plan": "Netflix UHD - 3 Months",
    "icon": "assets/icons/netflix.png",
    "owner": "Samrat Mukherjee",
    "owner_img": "https://randomuser.me/api/portraits/men/35.jpg",
    "price": "150",
    "interval": "Month",
    "total": 3,
    "full" : 4,
    "number": 20
  },
  {
    "plan": "Netflix UHD - 3 Months",
    "icon": "assets/icons/netflix.png",
    "owner": "Samrat Mukherjee",
    "owner_img": "https://randomuser.me/api/portraits/men/50.jpg",
    "price": "160",
    "interval": "Month",
    "total": 3,
    "full" : 6,
    "number": 21
  },
  {
    "plan": "Netflix UHD - 3 Months",
    "icon": "assets/icons/netflix.png",
    "owner": "Samrat Mukherjee",
    "owner_img": "https://randomuser.me/api/portraits/men/34.jpg",
    "price": "170",
    "interval": "Month",
    "total": 3,
    "full" : 5,
    "number": 22
  },
  {
    "plan": "Netflix UHD - 3 Months",
    "icon": "assets/icons/netflix.png",
    "owner": "Samrat Mukherjee",
    "owner_img": "https://randomuser.me/api/portraits/men/32.jpg",
    "price": "180",
    "interval": "Month",
    "total": 3,
    "full" : 7,
    "number": 23
  },
  {
    "plan": "Netflix UHD - 3 Months",
    "icon": "assets/icons/netflix.png",
    "owner": "Samrat Mukherjee",
    "owner_img": "https://randomuser.me/api/portraits/men/25.jpg",
    "price": "190",
    "interval": "Month",
    "total": 3,
    "full" : 10,
    "number": 24
  },
];