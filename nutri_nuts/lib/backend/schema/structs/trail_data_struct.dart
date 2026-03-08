// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrailDataStruct extends BaseStruct {
  TrailDataStruct({
    String? group,
    String? name,
    String? taste,
    double? calories,
    double? protein,
    double? carbs,
    double? fat,
    double? fibre,
    double? sugars,
    int? quantity,
    int? index,
  })  : _group = group,
        _name = name,
        _taste = taste,
        _calories = calories,
        _protein = protein,
        _carbs = carbs,
        _fat = fat,
        _fibre = fibre,
        _sugars = sugars,
        _quantity = quantity,
        _index = index;

  // "Group" field.
  String? _group;
  String get group => _group ?? '';
  set group(String? val) => _group = val;

  bool hasGroup() => _group != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Taste" field.
  String? _taste;
  String get taste => _taste ?? '';
  set taste(String? val) => _taste = val;

  bool hasTaste() => _taste != null;

  // "Calories" field.
  double? _calories;
  double get calories => _calories ?? 0.0;
  set calories(double? val) => _calories = val;

  void incrementCalories(double amount) => calories = calories + amount;

  bool hasCalories() => _calories != null;

  // "Protein" field.
  double? _protein;
  double get protein => _protein ?? 0.0;
  set protein(double? val) => _protein = val;

  void incrementProtein(double amount) => protein = protein + amount;

  bool hasProtein() => _protein != null;

  // "Carbs" field.
  double? _carbs;
  double get carbs => _carbs ?? 0.0;
  set carbs(double? val) => _carbs = val;

  void incrementCarbs(double amount) => carbs = carbs + amount;

  bool hasCarbs() => _carbs != null;

  // "Fat" field.
  double? _fat;
  double get fat => _fat ?? 0.0;
  set fat(double? val) => _fat = val;

  void incrementFat(double amount) => fat = fat + amount;

  bool hasFat() => _fat != null;

  // "Fibre" field.
  double? _fibre;
  double get fibre => _fibre ?? 0.0;
  set fibre(double? val) => _fibre = val;

  void incrementFibre(double amount) => fibre = fibre + amount;

  bool hasFibre() => _fibre != null;

  // "Sugars" field.
  double? _sugars;
  double get sugars => _sugars ?? 0.0;
  set sugars(double? val) => _sugars = val;

  void incrementSugars(double amount) => sugars = sugars + amount;

  bool hasSugars() => _sugars != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  static TrailDataStruct fromMap(Map<String, dynamic> data) => TrailDataStruct(
        group: data['Group'] as String?,
        name: data['Name'] as String?,
        taste: data['Taste'] as String?,
        calories: castToType<double>(data['Calories']),
        protein: castToType<double>(data['Protein']),
        carbs: castToType<double>(data['Carbs']),
        fat: castToType<double>(data['Fat']),
        fibre: castToType<double>(data['Fibre']),
        sugars: castToType<double>(data['Sugars']),
        quantity: castToType<int>(data['quantity']),
        index: castToType<int>(data['index']),
      );

  static TrailDataStruct? maybeFromMap(dynamic data) => data is Map
      ? TrailDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Group': _group,
        'Name': _name,
        'Taste': _taste,
        'Calories': _calories,
        'Protein': _protein,
        'Carbs': _carbs,
        'Fat': _fat,
        'Fibre': _fibre,
        'Sugars': _sugars,
        'quantity': _quantity,
        'index': _index,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Group': serializeParam(
          _group,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Taste': serializeParam(
          _taste,
          ParamType.String,
        ),
        'Calories': serializeParam(
          _calories,
          ParamType.double,
        ),
        'Protein': serializeParam(
          _protein,
          ParamType.double,
        ),
        'Carbs': serializeParam(
          _carbs,
          ParamType.double,
        ),
        'Fat': serializeParam(
          _fat,
          ParamType.double,
        ),
        'Fibre': serializeParam(
          _fibre,
          ParamType.double,
        ),
        'Sugars': serializeParam(
          _sugars,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
      }.withoutNulls;

  static TrailDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrailDataStruct(
        group: deserializeParam(
          data['Group'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        taste: deserializeParam(
          data['Taste'],
          ParamType.String,
          false,
        ),
        calories: deserializeParam(
          data['Calories'],
          ParamType.double,
          false,
        ),
        protein: deserializeParam(
          data['Protein'],
          ParamType.double,
          false,
        ),
        carbs: deserializeParam(
          data['Carbs'],
          ParamType.double,
          false,
        ),
        fat: deserializeParam(
          data['Fat'],
          ParamType.double,
          false,
        ),
        fibre: deserializeParam(
          data['Fibre'],
          ParamType.double,
          false,
        ),
        sugars: deserializeParam(
          data['Sugars'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TrailDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrailDataStruct &&
        group == other.group &&
        name == other.name &&
        taste == other.taste &&
        calories == other.calories &&
        protein == other.protein &&
        carbs == other.carbs &&
        fat == other.fat &&
        fibre == other.fibre &&
        sugars == other.sugars &&
        quantity == other.quantity &&
        index == other.index;
  }

  @override
  int get hashCode => const ListEquality().hash([
        group,
        name,
        taste,
        calories,
        protein,
        carbs,
        fat,
        fibre,
        sugars,
        quantity,
        index
      ]);
}

TrailDataStruct createTrailDataStruct({
  String? group,
  String? name,
  String? taste,
  double? calories,
  double? protein,
  double? carbs,
  double? fat,
  double? fibre,
  double? sugars,
  int? quantity,
  int? index,
}) =>
    TrailDataStruct(
      group: group,
      name: name,
      taste: taste,
      calories: calories,
      protein: protein,
      carbs: carbs,
      fat: fat,
      fibre: fibre,
      sugars: sugars,
      quantity: quantity,
      index: index,
    );
