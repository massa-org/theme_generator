// ignore_for_file: unused_element, invalid_annotation_target
import 'package:flutter/material.dart';
import 'package:theme_annotation/theme_annotation.dart';

part 'theme.g.dart';
part 'theme.theme.dart';

@ThemeDataAnnotation()
abstract class _ThemeData extends _$_ThemeDataBase {
  const _ThemeData._();

  const factory _ThemeData(
    @JsonKey(name: 'color') Color? backgroundColor,
    Color? addressBarColor, {
    Color? addressBarBackgroundColor,
  }) = _$_ThemeData;

  // must be define  manual
  factory _ThemeData.from(ColorScheme colorScheme) => _ThemeData(
        colorScheme.surface,
        colorScheme.onSurface,
        addressBarBackgroundColor: colorScheme.surface,
      ); // manual

  factory _ThemeData.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeDataFromJson(json);
}

@themeDataAnnotation
abstract class _ThemeData2 extends _$_ThemeData2Base {
  const _ThemeData2._();

  const factory _ThemeData2(
    Color? backgroundColor,
    Color? addressBarColor, {
    Color? addressBarBackgroundColor,
    TextDecoration? decor,
    TextStyle? style,
  }) = _$_ThemeData2;

  // must be define manual
  factory _ThemeData2.from(ColorScheme colorScheme) => _ThemeData2(
        colorScheme.surface,
        colorScheme.onSurface,
        addressBarBackgroundColor: colorScheme.surface,
      ); // manual

  factory _ThemeData2.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeData2FromJson(json);
}
