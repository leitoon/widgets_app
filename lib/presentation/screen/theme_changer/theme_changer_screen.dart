


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget {

  static const name = 'theme_changer_screen';
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final theme= ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(themeProvider.notifier).update((state) => !theme);
            },
            
           icon: theme? Icon(Icons.light_mode_outlined):Icon(Icons.dark_mode_outlined)

           )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView({
    super.key,
  });

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context,index){
        final color = colors[index];
      return RadioListTile(
        title: Text('Este color', style: TextStyle(color: color),),
        subtitle: Text('${color.value}'),
        activeColor: color,
        value: index,
         groupValue: 0,
          onChanged: (value){

          });
    });
  }
}