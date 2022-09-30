import 'dart:convert';

import 'package:flutter/material.dart';

class ColorModel {
  final Color color;

  bool? isCheck;
  ColorModel({
    required this.color,
    this.isCheck = false,
  });

  ColorModel copyWith({
    Color? color,
    bool? isCheck,
  }) {
    return ColorModel(
      color: color ?? this.color,
      isCheck: isCheck ?? this.isCheck,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'color': color.value,
      'isCheck': isCheck,
    };
  }

  factory ColorModel.fromMap(Map<String, dynamic> map) {
    return ColorModel(
      color: Color(map['color']),
      isCheck: map['isCheck'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ColorModel.fromJson(String source) =>
      ColorModel.fromMap(json.decode(source));

  @override
  String toString() => 'ColorModel(color: $color, isCheck: $isCheck)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ColorModel &&
        other.color == color &&
        other.isCheck == isCheck;
  }

  @override
  int get hashCode => color.hashCode ^ isCheck.hashCode;
}

final List<ColorModel> colors = [
  ColorModel(color: Colors.greenAccent.shade700),
  ColorModel(color: Colors.black)
];
