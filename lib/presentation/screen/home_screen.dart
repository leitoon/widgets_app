

import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

import '../../config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text('Flutter'),
      ),
      body: _HomeView(),
    );
    
  }
}

class _HomeView extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
   
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext, int){
        final menuItem = appMenuItems[int];
       return _CustomListTile(menuItem: menuItem);
      });
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: colors.primary),
     title: Text(menuItem.tittle),
     subtitle: Text(menuItem.subTittle),
     onTap: () {
       
     },
    );
  }
}