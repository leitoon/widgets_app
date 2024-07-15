
import 'package:flutter/material.dart';

class UiScreen extends StatelessWidget {
  static const name = 'ui-controls';
UiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI CONTROLS'),

      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {

   _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation {car, plane, boat, submarine}
class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectdtransporation = Transportation.car;
  bool wantsbreakfast=false;
   bool wantsLunch=false;
    bool wantsDinner=false;

  @override
  Widget build(BuildContext context) {
    return ListView
    (
      physics:ClampingScrollPhysics(),
      children: [
        SwitchListTile(
        value: isDeveloper,
        title: Text('Dev Mode'),
        subtitle: Text('Controles adicionales'),
         onChanged: (value)=>setState((){
          isDeveloper = !isDeveloper;
         })),
         ExpansionTile(title: Text('Vehiculo de transporte'),
         subtitle: Text('$selectdtransporation'),
         children: [
          RadioListTile(
          title: Text('By car'),
          subtitle: Text('viajar por carro'),
          value: Transportation.car, 
          groupValue: selectdtransporation, 
          onChanged:(value) => setState(() {
            selectdtransporation= Transportation.car;
          },)),
         RadioListTile(
          title: Text('By boat'),
          subtitle: Text('viajar por barco'),
          value: Transportation.boat, 
          groupValue: selectdtransporation, 
          onChanged:(value) => setState(() {
            selectdtransporation= Transportation.boat;
          },)),
          RadioListTile(
            title: Text('By plane'),
          subtitle: Text('viajar por avion'),
          value: Transportation.plane, 
          groupValue: selectdtransporation, 
          onChanged:(value) => setState(() {
            selectdtransporation= Transportation.plane;
          },)),
          RadioListTile(
            title: Text('By submarino'),
          subtitle: Text('viajar por submarino'),
          value: Transportation.submarine, 
          groupValue: selectdtransporation, 
          onChanged:(value) => setState(() {
            selectdtransporation= Transportation.submarine;
          },))
         ],
         ),
         CheckboxListTile(
          title: Text('Desayuno?') ,
          value: wantsbreakfast, 
          onChanged: (value)=>setState(() {
            wantsbreakfast=!wantsbreakfast;
          })),
          CheckboxListTile(
          title: Text('Almuerzo?') ,
          value: wantsLunch, 
          onChanged: (value)=>setState(() {
            wantsLunch=!wantsLunch;
          })),
          CheckboxListTile(
          title: Text('Cena?') ,
          value: wantsDinner, 
          onChanged: (value)=>setState(() {
            wantsDinner=!wantsDinner;
          }))
      ],
    );
  }
}