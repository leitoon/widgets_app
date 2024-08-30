


import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/theme/app_theme.dart';
import '../../providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget {

  static const name = 'theme_changer_screen';
  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDarkmode= ref.watch(themeNotifierProvider).isDarkmode;
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
            
           icon: isDarkmode? Icon(Icons.dark_mode_outlined):Icon(Icons.light_mode_outlined)

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
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context,index){
        final color = colors[index];
      return RadioListTile(
        title: Text('Este color', style: TextStyle(color: color),),
        subtitle: Text('${color.value}'),
        activeColor: color,
        value: index,
         groupValue: selectedColor,
          onChanged: (value){
            //ref.read(selectedColorProvider.notifier).state =index;
            ref.watch(themeNotifierProvider.notifier).changeColorIndex(index);
          });
    });
  }
}