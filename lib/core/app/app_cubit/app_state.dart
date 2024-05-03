import 'package:flutter/material.dart';

abstract class AppState {}

class AppInitial extends AppState {}

class AppChangedLanguage extends AppState {
  final Locale local;

  AppChangedLanguage({required this.local});
}
