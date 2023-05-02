import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HeightWidth extends StatefulWidget {
  const HeightWidth({super.key});

  @override
  State<HeightWidth> createState() => _HeightWidthState();
}

class _HeightWidthState extends State<HeightWidth> {
    double ch = 100;
  double cw = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
        child: Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Container(
                width: cw,
                height: ch,
                color: Colors.green,
                child: Center(child: Text("Height & Width")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (() {
                          setState(() {
                            ch = ch + 20;
                            cw = cw + 20;
                              print(ch);
                          });
                        }),
                        child: CircleAvatar(
                          child: 
                          Icon(Icons.add),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: (() {
                          setState(() {
                            ch = ch - 20;
                            cw = cw - 20;
                          });
                        }),
                        child: CircleAvatar(
                          child: Icon(Icons.remove),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  
  }
}