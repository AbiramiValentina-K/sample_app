import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThemeChange extends StatefulWidget {
  const ThemeChange({super.key});

  @override
  State<ThemeChange> createState() => _ThemeChangeState();
}

class _ThemeChangeState extends State<ThemeChange> {
 Color def = Color(0xffffa630);
  var i = 0;
  List clrlis = [Colors.purple,Colors.brown, Colors.cyan, Colors.red, Colors.teal];
  var j = 0 ;
  List title = ["Purple", "Brown", "Cyan", "Red", "Teal"];
  var k = 0;
  List bdbg = [Color(0xffe0f6a3), Color(0xfff5e4a2), Color(0xffc3b299), Color(0xffcbd4c2), Color(0xffbfacb5)];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bdbg[k],
      appBar: AppBar(
        backgroundColor: clrlis[i],
        title: Text(title[j]),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 160,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent.shade400,),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Change Appbar theme",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
                              child: InkWell(
                                onTap: (() {
                                  setState(() {
                                    if(i<4){
                                      i = i+ 1;
                                    }
                                    else{
                                      i=0;
                                    }
                                  });
                                }),
                                child: Text("Color"),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40),
                              child: InkWell(
                                onTap: (() {
                                  setState(() {
                                    j = i;
                                  });
                                }),
                                child: Text("Title"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 160,
                  width: 300,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent.shade400,),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Change Body theme",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
                              child: InkWell(
                                onTap: (() {
                                  setState(() {
                                    if(k<4){
                                      k = k+ 1;
                                    }
                                    else{
                                      k=0;
                                    }
                                  });
                                }),
                                child: Text("Color"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}