import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/sliderProvider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<SliderProvider>(context , listen: false);
    print("false");
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(builder: (context, value, child){
            return Slider(
                min: 0,
                max: 1,
                value: value.val,
                onChanged: (val){
                  value.setValue(val);
                });
          }),
          Consumer<SliderProvider>(builder: (context, value, child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.val),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(1 - value.val),
                    ),
                  ),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
