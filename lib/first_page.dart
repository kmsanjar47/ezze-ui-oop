import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.file_copy_rounded),label: "Home"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_on_clipboard_fill),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.calendar_today),label: "Home"),
      ],),
      backgroundColor: Colors.greenAccent.withOpacity(0.3),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.blueGrey.shade100),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                    child: Center(child: Icon(Icons.close))),
                const Icon(Icons.drag_indicator_rounded)
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(27),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Messsaging ID",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Your daily plan",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "70%",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.grey,
                        color: Colors.black,
                        value: 0.2,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "4 of 6 completed",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent.withOpacity(0.4),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "17",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: [
                                Icon(Icons.task),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Tasks finished",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent.withOpacity(0.4),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "3.2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: [
                                Icon(Icons.task),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "Tasks finished",
                                  style: TextStyle(color: Colors.blueGrey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Overview",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10,),
                      Text("Messaging ID framework development for the"),
                      Text("marketing branch and the publicity bureau and"),
                      Text("implemented a draft on the framework"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Members connected",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            child: Center(
                              child: Icon(Icons.group),
                            ),
                          ),
                          SizedBox(width: 10,),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            child: Center(
                              child: Icon(Icons.group),
                            ),
                          ),
                          SizedBox(width: 10,),CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            child: Center(
                              child: Icon(Icons.group),
                            ),
                          ),
                          SizedBox(width: 10,),CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 30,
                            child: Center(
                              child: Icon(Icons.plus_one_outlined),
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
