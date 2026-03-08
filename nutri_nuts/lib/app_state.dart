import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _weight = 0;
  int get weight => _weight;
  set weight(int value) {
    _weight = value;
  }

  List<TrailDataStruct> _finalTrailMixList = [];
  List<TrailDataStruct> get finalTrailMixList => _finalTrailMixList;
  set finalTrailMixList(List<TrailDataStruct> value) {
    _finalTrailMixList = value;
  }

  void addToFinalTrailMixList(TrailDataStruct value) {
    finalTrailMixList.add(value);
  }

  void removeFromFinalTrailMixList(TrailDataStruct value) {
    finalTrailMixList.remove(value);
  }

  void removeAtIndexFromFinalTrailMixList(int index) {
    finalTrailMixList.removeAt(index);
  }

  void updateFinalTrailMixListAtIndex(
    int index,
    TrailDataStruct Function(TrailDataStruct) updateFn,
  ) {
    finalTrailMixList[index] = updateFn(_finalTrailMixList[index]);
  }

  void insertAtIndexInFinalTrailMixList(int index, TrailDataStruct value) {
    finalTrailMixList.insert(index, value);
  }

  List<int> _finalTrailValues = [];
  List<int> get finalTrailValues => _finalTrailValues;
  set finalTrailValues(List<int> value) {
    _finalTrailValues = value;
  }

  void addToFinalTrailValues(int value) {
    finalTrailValues.add(value);
  }

  void removeFromFinalTrailValues(int value) {
    finalTrailValues.remove(value);
  }

  void removeAtIndexFromFinalTrailValues(int index) {
    finalTrailValues.removeAt(index);
  }

  void updateFinalTrailValuesAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    finalTrailValues[index] = updateFn(_finalTrailValues[index]);
  }

  void insertAtIndexInFinalTrailValues(int index, int value) {
    finalTrailValues.insert(index, value);
  }

  List<String> _finalTrailLabels = ['Almonds'];
  List<String> get finalTrailLabels => _finalTrailLabels;
  set finalTrailLabels(List<String> value) {
    _finalTrailLabels = value;
  }

  void addToFinalTrailLabels(String value) {
    finalTrailLabels.add(value);
  }

  void removeFromFinalTrailLabels(String value) {
    finalTrailLabels.remove(value);
  }

  void removeAtIndexFromFinalTrailLabels(int index) {
    finalTrailLabels.removeAt(index);
  }

  void updateFinalTrailLabelsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    finalTrailLabels[index] = updateFn(_finalTrailLabels[index]);
  }

  void insertAtIndexInFinalTrailLabels(int index, String value) {
    finalTrailLabels.insert(index, value);
  }
}
