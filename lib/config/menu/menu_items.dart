

import 'package:flutter/material.dart';

class MenuItem {
  final String tittle;
  final String subTittle;
  final String link;
  final IconData icon;

  MenuItem({required this.tittle, required this.subTittle, required this.link, required this.icon});
}

 List<MenuItem> appMenuItems = <MenuItem>[
  MenuItem(
    tittle: 'Botones',
    subTittle: 'Varios botones en flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined),
    MenuItem(
    tittle: 'Tarjetas',
    subTittle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card),
    MenuItem(
    tittle: 'Progress Indicators',
    subTittle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded),
    MenuItem(
    tittle: 'Snackbars y dialogos',
    subTittle: 'Indicadores en pantalla',
    link: '/snackscreen',
    icon: Icons.info_outline),
    MenuItem(
    tittle: 'Animated Controller',
    subTittle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outlined),
    MenuItem(
    tittle: 'Ui Controls + Tiles',
    subTittle: 'Una serie de controles de Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined)
];