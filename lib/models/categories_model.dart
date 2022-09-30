import 'dart:convert';

import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final IconData icon;
  bool? ischeck;
  CategoryModel({
    required this.title,
    required this.icon,
    this.ischeck = false,
  });

  CategoryModel copyWith({
    String? title,
    IconData? icon,
    bool? ischeck,
  }) {
    return CategoryModel(
      title: title ?? this.title,
      icon: icon ?? this.icon,
      ischeck: ischeck ?? this.ischeck,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'icon': icon.codePoint,
      'ischeck': ischeck,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      title: map['title'] ?? '',
      icon: IconData(map['icon'], fontFamily: 'MaterialIcons'),
      ischeck: map['ischeck'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'CategoryModel(title: $title, icon: $icon, ischeck: $ischeck)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CategoryModel &&
        other.title == title &&
        other.icon == icon &&
        other.ischeck == ischeck;
  }

  @override
  int get hashCode => title.hashCode ^ icon.hashCode ^ ischeck.hashCode;
}

final List<CategoryModel> categories = [
  CategoryModel(title: 'Keyboard', icon: Icons.keyboard_outlined),
  CategoryModel(title: 'Mouse', icon: Icons.mouse_outlined),
  CategoryModel(title: 'Headphone', icon: Icons.headphones_outlined),
  CategoryModel(title: 'Monitor', icon: Icons.monitor_outlined),
  CategoryModel(title: 'Gaming chair', icon: Icons.chair_alt_outlined),
];
