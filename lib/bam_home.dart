import 'dart:math';

import 'package:bam_calcuter/DataProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // int weight = 44;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black.withOpacity(0.5),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                color: Colors.black.withOpacity(0.5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(20),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              provider.isMale = true;
                            });
                          },
                          child: Card(
                            color: provider.isMale == true ? Colors.teal : Colors.black,
                            elevation: 14,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 60,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "MALE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(20),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              provider.isMale = false;
                            });
                          },
                          child: Card(
                            color: provider.isMale == false ? Colors.teal : Colors.black,
                            elevation: 14,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 60,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "FEMALE",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 10,
                child: Container(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.black.withOpacity(0.8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.7)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              provider.hight.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 10),
                            thumbColor: Colors.pink,
                            overlayColor: Colors.green,
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.red,
                          ),
                          child: Slider(
                            min: 10.0,
                            max: 300.0,
                            value: provider.hight.toDouble(),
                            onChanged: (double value) {
                              setState(() {

                              });
                              provider.hight = value.toInt();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 10,
                child: Container(
                  color: Colors.black.withOpacity(0.8),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(6),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14)),
                          child: Card(
                            color: Colors.black.withOpacity(0.4),
                            elevation: 14,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "WEIGHT",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white.withOpacity(0.7)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  provider.weight.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FloatingActionButton(
                                        onPressed: () {
                                          //   setState(() {});
                                          //   weight--;
                                          //
                                          if (0 < provider.weight) {
                                            provider.WEIGHTDecrement();
                                          }
                                        },
                                        backgroundColor: Colors.black,
                                        child: Text(
                                          "-",
                                          style: TextStyle(fontSize: 26),
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                        onPressed: () {
                                          // weight++;
                                          // setState(() {});
                                          provider.WEIGHTIncrement();
                                        },
                                        backgroundColor: Colors.black,
                                        child: Text(
                                          "+",
                                          style: TextStyle(fontSize: 26),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(6),
                          padding: EdgeInsets.all(15),
                          child: Card(
                            color: Colors.black.withOpacity(0.4),
                            elevation: 14,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "AGE",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white.withOpacity(0.7)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  provider.age.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FloatingActionButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   age--;
                                          // });
                                          if (0 < provider.age) {
                                            provider.AgeDecrement();
                                          }
                                        },
                                        backgroundColor: Colors.black,
                                        child: Text(
                                          "-",
                                          style: TextStyle(fontSize: 26),
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    FloatingActionButton(
                                        onPressed: () {
                                          // setState(() {
                                          //   age++;
                                          // });
                                          provider.AgeIncrement();
                                        },
                                        backgroundColor: Colors.black,
                                        child: Text(
                                          "+",
                                          style: TextStyle(fontSize: 26),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: InkWell(
                  onTap: () {
                    var bmi = (provider.weight / pow(provider.hight / 100, 2));

                    print(" My Result $bmi");

                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("BMI RESULT"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("$bmi"),
                              ],
                            ),
                            actions: [
                              ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text("Ok"))
                            ],
                          );
                        });
                  },
                  child: Container(
                    width: double.infinity,
                    color: Colors.pink,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "CALCULATE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
