import 'package:flutter/material.dart';
import 'package:habittracker/components/habit_tile.dart';
import 'package:habittracker/components/my_fab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // data structure for today's habit list
  List todaysHabitList = [
    // [habitName, habitCompleted]
    ["Morning Run", false],
    ["Read Book", false],
    ["Code App", false],
  ];

  // checkbox was tapped
  void onCheckBoxTapped(bool? value, int index) {
    setState(() {
      todaysHabitList[index][1] = value;
    });
  }

  void createNewHabit(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: MyFloatingActionButton(),
      body: ListView.builder(
          itemCount: todaysHabitList.length,
          itemBuilder: (context, index) {
            // habit tiles
            return HabitTile(
              habitName: todaysHabitList[index][0],
              habitCompleted: todaysHabitList[index][1],
              onChanged: (value) => onCheckBoxTapped(value, index),
            );
          }),
    );
  }
}
