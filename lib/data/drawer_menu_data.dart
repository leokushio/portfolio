
import 'package:flutter/material.dart';
import 'package:portfolio/models/drawer_menu_model.dart';
import 'package:portfolio/providers/language_provider.dart';
import 'package:provider/provider.dart';


List drawerMenuData = <DrawerMenuModel>[
  DrawerMenuModel(title: 'Dashboard', icon: Icons.home),
  DrawerMenuModel(title: 'Projects', icon: Icons.dashboard_rounded),
  // DrawerMenuModel(title: 'Game Dev', icon: Icons.gamepad),
  DrawerMenuModel(title: 'About Me', icon: Icons.person),
];

List drawerMenuDataRus = <DrawerMenuModel>[
  DrawerMenuModel(title: 'Главная', icon: Icons.home),
  DrawerMenuModel(title: 'Проекты', icon: Icons.dashboard_rounded),
  // DrawerMenuModel(title: 'ГеймДэв', icon: Icons.gamepad),
  DrawerMenuModel(title: 'Обо мне', icon: Icons.person),
];