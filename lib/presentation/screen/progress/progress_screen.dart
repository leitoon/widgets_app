

import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'ProgressScreen';
ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Indicators'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text('Circilar progress indicator'),
          SizedBox(height: 10,),
          CircularProgressIndicator(strokeWidth: 3,backgroundColor: Colors.black45,),
           SizedBox(height: 20,),
          Text('Circilar y linear indicator controlado'),
          SizedBox(height: 20,),
          _ControllerProgresIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgresIndicator extends StatelessWidget {
  const _ControllerProgresIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      
      stream: Stream.periodic(Duration(milliseconds: 300), (value){
        return (value*2)/100;
      }).takeWhile((value) => value<100),
      builder: (context, snapshot) {
        final progressValue = snapshot.data ?? 0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 3,backgroundColor: Colors.black12,),
               SizedBox(width: 20,),
              Expanded(child: 
        
              LinearProgressIndicator(value: progressValue,)
              )
            ],
          ),
        );
      }
    );
  }
}