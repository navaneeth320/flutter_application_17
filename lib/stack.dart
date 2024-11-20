import 'package:flutter/material.dart';
import 'package:flutter_application_17/newcontact.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert),
        ],
        backgroundColor: Colors.white,
        title: SizedBox(
            height: 50,
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: "Search Contacts",
                  suffixIcon: Icon(Icons.mic),
                  prefix: Icon(Icons.search)),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                color: Colors.white,
                height: 50,
                width: 500,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "My profile",
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.chevron_right)
                  ],
                )),
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  height: 700,
                  width: 450,
                ),
                SizedBox(
                  height: 700,
                  width: 200,
                  child: ListView.builder(
                    itemCount: ll.length,
                    itemBuilder: (
                      context,
                      i,
                    ) {
                      return SizedBox(
                          height: 60,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(backgroundImage: AssetImage(ll[i])),
                              SizedBox(
                                width: 20,
                              ),
                              Text(mm[i])
                            ],
                          ));
                    },
                  ),
                ),IconButton(onPressed: () {Navigator.push(
                  context
                  ,MaterialPageRoute(builder: (context) => contact(),)
                );
                  
                }, icon: Padding(
                  padding:  EdgeInsets.only(top: 600,bottom: 650,left: 360),
                  child: Icon(Icons.contact_page_outlined),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }

  List ll = [
    "images/images.jpg",
    "images/images (2).jpg",
    "images/images (3).jpg",
    "images/images (4).jpg",
    "images/images (5).jpg",
    " images/images (6).jpg",
    "images/images (7).jpg",
    "images/images (8).jpg",
    "images/images (10).jpg",
    "images/images (11).jpg",
    "images/images (12).jpg",
    "images/images (13).jpg"
  ];
  List mm = [
    "VT",
    "KANNUR",
    "MAHADHEV",
    "MUTHUMANI",
    "KING",
    "TELENT",
    "VOLONT",
    "SURIYAPUTHRAN",
    "VENTIRATY",
    "VOLANT",
    "VIKRANT",
    "SANNIDHAN"
  ];
}
