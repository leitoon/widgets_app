

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name  = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('buttons screen'),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.pop();
        },
      child: Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: (){}, 
            child: Text('Elevated Button')),
            ElevatedButton(onPressed: null, 
            child: Text('Elevated disabled')),
            ElevatedButton.icon(onPressed: (){}, 
            icon: Icon(Icons.access_alarm_rounded),
            label: Text('Elevated icon')),
            FilledButton(onPressed: (){}, child: Text('Filled')),
            FilledButton.icon(onPressed: (){}, icon: Icon(Icons.access_alarm), label: Text('filled icon')),
            OutlinedButton(onPressed: (){}, child: Text('Outline')),
            OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.terminal),label: Text('Outline Icon')),
            TextButton(onPressed: (){}, child: Text('Text')),
            TextButton.icon(onPressed: (){}, icon:Icon(Icons.account_balance) ,label: Text('Text icon')),
            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration)),
            IconButton(onPressed: (){}, icon: Icon(Icons.app_registration),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary),
              iconColor: MaterialStatePropertyAll(Colors.white)
            ),),
            CustomButton()

          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Hola mundo',style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}