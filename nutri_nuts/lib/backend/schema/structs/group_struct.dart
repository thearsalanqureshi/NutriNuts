// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GroupStruct extends BaseStruct {
  GroupStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  static GroupStruct fromMap(Map<String, dynamic> data) => GroupStruct(
        name: data['name'] as String?,
      );

  static GroupStruct? maybeFromMap(dynamic data) =>
      data is Map ? GroupStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static GroupStruct fromSerializableMap(Map<String, dynamic> data) =>
      GroupStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GroupStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GroupStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

GroupStruct createGroupStruct({
  String? name,
}) =>
    GroupStruct(
      name: name,
    );
