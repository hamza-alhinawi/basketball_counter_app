import 'package:basket_ball_counter_app/widgets/custom_elevated_button.dart';
import 'package:basket_ball_counter_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    // print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'Team A'),
                      Text('$teamAPoints', style: TextStyle(fontSize: 150)),

                      CustomElevatedButton(
                        text: 'Add 1 Point ',
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                      ),
                      CustomElevatedButton(
                        text: 'Add 2 Point',
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                      ),
                      CustomElevatedButton(
                        text: 'Add 3 Point',
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(text: 'Team B'),
                      Text('$teamBPoints', style: TextStyle(fontSize: 150)),

                      CustomElevatedButton(
                        text: 'Add 1 Point ',
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                      ),
                      CustomElevatedButton(
                        text: 'Add 2 Point',
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                      ),
                      CustomElevatedButton(
                        text: 'Add 3 Point',
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            CustomElevatedButton(
              text: 'Resset',
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
