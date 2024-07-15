

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/screens.dart';

class SnackScreen extends StatelessWidget {
  static const name = 'SnackScreen';
SnackScreen({super.key});
void showCustomScackbar(BuildContext context){
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Hola mundo'),
            action: SnackBarAction(label: 'Ok', onPressed: (){

            }),
            duration: Duration(seconds: 2),
            )
          );
}
void openDialog(BuildContext context){
  showDialog(context: context,
  barrierDismissible: false,
   builder: (context)=> AlertDialog(
    title: Text('Estas seguro?'),
    content: Text('Fugiat incididunt laboris irure adipisicing officia excepteur aliquip. Nisi veniam pariatur aliqua reprehenderit incididunt deserunt deserunt. Labore est id pariatur nisi dolore irure enim dolor. Dolore est dolor sit id non velit consectetur laborum. Irure velit laboris ut occaecat magna adipisicing est aliqua.'),
    actions: [
      TextButton(onPressed: (){
        context.pop();
      }, 
      child: Text('Cancelar')),
      FilledButton(onPressed: (){
        context.pop();
      }, 
      child: Text('Aceptar'))
    ],
   ))
  
  ;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(context: context,
              children: [
                Text('hola que tal')
              ]
              );
            }, child: Text('Licencias usadas')),
            FilledButton.tonal(onPressed: (){
              openDialog(context);
            }, child: Text('Mostrar diálogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          showCustomScackbar(context);
        },
        icon: Icon(Icons.remove_red_eye_outlined),
         label: Text('Mostrar Snackbar')),
    );
  }
}