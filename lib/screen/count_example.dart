import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("StateManagement"),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child){
          return Text(value.count.toString(), style: TextStyle(fontSize: 40),);
      }),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
