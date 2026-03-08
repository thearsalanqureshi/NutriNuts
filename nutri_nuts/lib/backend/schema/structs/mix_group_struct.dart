// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MixGroupStruct extends BaseStruct {
  MixGroupStruct({
    String? groupName,
    List<TrailDataStruct>? items,
    String? description,
  })  : _groupName = groupName,
        _items = items,
        _description = description;

  // "groupName" field.
  String? _groupName;
  String get groupName => _groupName ?? '';
  set groupName(String? val) => _groupName = val;

  bool hasGroupName() => _groupName != null;

  // "items" field.
  List<TrailDataStruct>? _items;
  List<TrailDataStruct> get items => _items ?? const [];
  set items(List<TrailDataStruct>? val) => _items = val;

  void updateItems(Function(List<TrailDataStruct>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static MixGroupStruct fromMap(Map<String, dynamic> data) => MixGroupStruct(
        groupName: data['groupName'] as String?,
        items: getStructList(
          data['items'],
          TrailDataStruct.fromMap,
        ),
        description: data['description'] as String?,
      );

  static MixGroupStruct? maybeFromMap(dynamic data) =>
      data is Map ? MixGroupStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'groupName': _groupName,
        'items': _items?.map((e) => e.toMap()).toList(),
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'groupName': serializeParam(
          _groupName,
          ParamType.String,
        ),
        'items': serializeParam(
          _items,
          ParamType.DataStruct,
          isList: true,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static MixGroupStruct fromSerializableMap(Map<String, dynamic> data) =>
      MixGroupStruct(
        groupName: deserializeParam(
          data['groupName'],
          ParamType.String,
          false,
        ),
        items: deserializeStructParam<TrailDataStruct>(
          data['items'],
          ParamType.DataStruct,
          true,
          structBuilder: TrailDataStruct.fromSerializableMap,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MixGroupStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MixGroupStruct &&
        groupName == other.groupName &&
        listEquality.equals(items, other.items) &&
        description == other.description;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([groupName, items, description]);
}

MixGroupStruct createMixGroupStruct({
  String? groupName,
  String? description,
}) =>
    MixGroupStruct(
      groupName: groupName,
      description: description,
    );
