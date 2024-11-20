import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "CREATE A NEW CONTACT",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 40,
            ),
            Text(
              "save",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            color: Colors.green,
            height: 400,
            width: 450,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: SizedBox(
                      height: 200,
                      child: Image.asset(
                        "images/download.png",
                      )),
                ),
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: SizedBox(
                      height: 50,
                      child: Image.asset(
                          "images/vecteezy_camera-icon-sign-symbol-design_10158003.png")),
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 380, left: 20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20))),
                  height: 80,
                  width: 400,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 120),
                        child: Icon(
                          Icons.save_as_outlined,
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 20),
                        child: Text(
                          "saving to",
                          selectionColor: Colors.black12,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ))),
          Padding(
            padding: EdgeInsets.only(top: 420, left: 50),
            child: Text(
              "MTNGH",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 480, left: 30),
            child: Container(
              color: Colors.white,
              height: 450,
              width: 390,
            ),
          ),Padding(
            padding:  EdgeInsets.only(top: 480,left: 50),
            child: SizedBox(width: 300,
              child: TextField(
                decoration: InputDecoration(labelText: "Enter your first name",icon: Icon(Icons.person,size: 40,)),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 500,left: 350),
            child: Icon(Icons.arrow_drop_down_circle),
          ),Padding(
            padding: EdgeInsets.only(top: 520,left: 100),
            child: TextField(decoration: InputDecoration(labelText: "Last name",),),
          ),Padding(
            padding: EdgeInsets.only(top: 580,left: 60),
            child: TextField(decoration: InputDecoration(labelText:"Phone",icon: Icon(Icons.phone,size: 40,) ),),
          ),Padding(
            padding:  EdgeInsets.only(top: 630,left: 160,right: 200),
            child: Icon(Icons.arrow_drop_down_outlined,size: 50,),
          ),Padding(
            padding: EdgeInsets.only(top: 630,left: 100,right: 200),
            child: TextField(decoration: InputDecoration(labelText: "Mobile"),),
          ),Padding(
            padding:  EdgeInsets.only(top: 680,left: 100),
            child: TextField(decoration: InputDecoration(labelText: "Email",icon: Icon(Icons.mail)),),
          ),Padding(
            padding: const EdgeInsets.only(top: 740,left: 150),
            child: TextField(decoration: InputDecoration(labelText: "Home"),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 730,left: 200),
            child: Icon(Icons.arrow_drop_down,size:40 ,),
          ),Padding(
            padding: const EdgeInsets.only(top: 800,left: 200),
            child: Text("MORE FIELDS",),
          )
         
        ]),
      ),
    );
  }
}
