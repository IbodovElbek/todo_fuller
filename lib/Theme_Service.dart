import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService{
  final _box=GetStorage();
  final key="isddarkMode";
  bool _loadThemeFromBox()=>_box.read(key)??false;
  ThemeMode get theme=>_loadThemeFromBox()?ThemeMode.dark:ThemeMode.light;
}