// ignore_for_file: annotate_overrides, unused_element

part of 'theme.dart';

// **************************************************************************
// ThemeGenerator
// **************************************************************************

abstract class _$_ThemeDataBase implements ThemeBase<_$_ThemeData> {
  /* ALL ${e.type} get ${e.name}; */
  Color? get backgroundColor;
  Color? get addressBarColor;
  Color? get addressBarBackgroundColor;

  const _$_ThemeDataBase();
  _$_ThemeData combine(_$_ThemeData? other) {
    if (other == null) return this as _$_ThemeData;
    return _$_ThemeData(
      /* POSITIONAL other.${e.name} ?? ${e.name}, */
      other.backgroundColor ?? backgroundColor,
      other.addressBarColor ?? addressBarColor,
      /* NAMED ${e.name}: other.${e.name} ?? ${e.name},*/
      addressBarBackgroundColor:
          other.addressBarBackgroundColor ?? addressBarBackgroundColor,
    );
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: true)
@NullableColorConverter()
class _$_ThemeData extends _ThemeData {
  /* ALL final ${e.type} ${e.name}; */
  @JsonKey(name: 'color')
  final Color? backgroundColor;
  final Color? addressBarColor;
  final Color? addressBarBackgroundColor;

  const _$_ThemeData(
    /* REQUIRED this.${e.name}, */
    this.backgroundColor,
    this.addressBarColor,
    /* OPTIONAL [
      this.${e.name},
    ]*/

    /* NAMED {
      this.${e.name},
    } */
    {
    this.addressBarBackgroundColor,
  }) : super._();

  Map<String, dynamic> toJson() => _$$_ThemeDataToJson(this);
}

abstract class _$_ThemeData2Base implements ThemeBase<_$_ThemeData2> {
  /* ALL ${e.type} get ${e.name}; */
  Color? get backgroundColor;
  Color? get addressBarColor;
  Color? get addressBarBackgroundColor;
  TextDecoration? get decor;
  TextStyle? get style;

  const _$_ThemeData2Base();
  _$_ThemeData2 combine(_$_ThemeData2? other) {
    if (other == null) return this as _$_ThemeData2;
    return _$_ThemeData2(
      /* POSITIONAL other.${e.name} ?? ${e.name}, */
      other.backgroundColor ?? backgroundColor,
      other.addressBarColor ?? addressBarColor,
      /* NAMED ${e.name}: other.${e.name} ?? ${e.name},*/
      addressBarBackgroundColor:
          other.addressBarBackgroundColor ?? addressBarBackgroundColor,
      decor: other.decor ?? decor,
      style: other.style ?? style,
    );
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: true)
@NullableColorConverter()
@NullableTextDecorationConverter()
@NullableTextStyleConverter()
class _$_ThemeData2 extends _ThemeData2 {
  /* ALL final ${e.type} ${e.name}; */
  final Color? backgroundColor;
  final Color? addressBarColor;
  final Color? addressBarBackgroundColor;
  final TextDecoration? decor;
  final TextStyle? style;

  const _$_ThemeData2(
    /* REQUIRED this.${e.name}, */
    this.backgroundColor,
    this.addressBarColor,
    /* OPTIONAL [
      this.${e.name},
    ]*/

    /* NAMED {
      this.${e.name},
    } */
    {
    this.addressBarBackgroundColor,
    this.decor,
    this.style,
  }) : super._();

  Map<String, dynamic> toJson() => _$$_ThemeData2ToJson(this);
}
