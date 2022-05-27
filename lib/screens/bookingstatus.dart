import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class BookingStatusPage extends StatefulWidget {
  const BookingStatusPage({ Key? key }) : super(key: key);

  @override
  State<BookingStatusPage> createState() => _BookingStatusPageState();
}

class _BookingStatusPageState extends State<BookingStatusPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.875,
                  width: MediaQuery.of(context).size.width,
                  // color: Colors.amber,
                ),
                // Padding(padding: EdgeInsets.all(20)),
                Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  color: Colors.blue,
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width*0.05,
                  right: MediaQuery.of(context).size.width*0.05,
                  top: MediaQuery.of(context).size.height*0.37,
                  // bottom: 10,
                  // height: 200,
                  // width: MediaQuery.of(context).size.width*0.85,
                  child: Container(
                    // height: 200,
                    width: MediaQuery.of(context).size.width*0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(1.0, 1.0), //(x,y)
                          blurRadius: 5.0,
                        )
                    ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        children: [
                          TrackingOrderWid("10:30", "true", "Booking made"),
                          TrackingOrderWid("10:30", "true", "Booking made"),
                          TrackingOrderWid("10:30", "true", "Booking made"),
                          TrackingOrderWid("10:30", "true", "Booking made")
                        ],
                      ),
                    )
                    )
                  )
              ]
            ),
        ],
      )
    );
  }

  Container TrackingOrderWid (String time, String boolt, String status) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "${time}",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
          SizedBox(width: 20,),
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                      ),
                  )
                ],
              ),
              Container(
                height: 100,
                width: 4,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
    
    // return Container(
    //   child: Row(
    //     children: [
    //       Stack(
    //         children: [
    //           Column(
    //             children: [
    //              Text(
    //                "${time}",
    //                 style: TextStyle(color: Colors.grey, fontSize: 16),
    //               ),
    //               SizedBox(
    //                 height: 25,
    //               ),
    //            ],
    //           ),
    //           // SizedBox(width: 20,),
    //           Column(
    //             children: [
    //               Container(
    //                 height: 20,
    //                 width: 20,
    //                 decoration: BoxDecoration(
    //                   shape: BoxShape.circle,
    //                   color: Colors.blue,
    //                   ),
    //               )
    //             ],
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }

}