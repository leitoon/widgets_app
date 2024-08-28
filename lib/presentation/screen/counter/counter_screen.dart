


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

import '../../providers/counter_providers.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final clickCounter = ref.watch(counterProvider);
    final theme= ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(themeProvider.notifier).update((state) => !theme);
            },
            
           icon: theme? Icon(Icons.light_mode_outlined):Icon(Icons.dark_mode_outlined)

           )
        ],
      ),
      
      body: Center(
        child: Text('Valor: $clickCounter',style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        
      onPressed: (){
        ref.read(counterProvider.notifier).state++;
        //ref.read(counterProvider.notifier).update((state) => state+1);
      }, 
      child: Icon(Icons.add)),
    );
  }
}