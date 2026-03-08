// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MacroStruct extends BaseStruct {
  MacroStruct({
    Color? color,
    String? label,
    String? valueLabel,
    double? value,
  })  : _color = color,
        _label = label,
        _valueLabel = valueLabel,
        _value = value;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;

  bool hasColor() => _color != null;

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "valueLabel" field.
  String? _valueLabel;
  String get valueLabel => _valueLabel ?? '';
  set valueLabel(String? val) => _valueLabel = val;

  bool hasValueLabel() => _valueLabel != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  static MacroStruct fromMap(Map<String, dynamic> data) => MacroStruct(
        color: getSchemaColor(data['color']),
        label: data['label'] as String?,
        valueLabel: data['valueLabel'] as String?,
        value: castToType<double>(data['value']),
      );

  static MacroStruct? maybeFromMap(dynamic data) =>
      data is Map ? MacroStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'color': _color,
        'label': _label,
        'valueLabel': _valueLabel,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'valueLabel': serializeParam(
          _valueLabel,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static MacroStruct fromSerializableMap(Map<String, dynamic> data) =>
      MacroStruct(
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        valueLabel: deserializeParam(
          data['valueLabel'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'MacroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MacroStruct &&
        color == other.color &&
        label == other.label &&
        valueLabel == other.valueLabel &&
        value == other.value;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([color, label, valueLabel, value]);
}

MacroStruct createMacroStruct({
  Color? color,
  String? label,
  String? valueLabel,
  double? value,
}) =>
    MacroStruct(
      color: color,
      label: label,
      valueLabel: valueLabel,
      value: value,
    );
