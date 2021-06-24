




import 'package:flutter/material.dart';
import 'package:learn_bitrise/counter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Value of the counter is:'),
              Text(counter.counter.toString())
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter.increment();
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: ()  {
              setState(() {
                counter.decrement();
              });
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
