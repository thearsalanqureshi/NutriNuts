import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

List<TrailDataStruct>? getTrailData() {
  // Decode the JSON string
  final List<dynamic> jsonList = [
    {
      "Group": "Nuts",
      "Name": "Almonds",
      "Taste": "Crunch",
      "Calories": 579,
      "Protein": 21.1,
      "Carbs": 21.6,
      "Fat": 49.9,
      "Fibre": 12.2,
      "Sugars": 4.35
    },
    {
      "Group": "Nuts",
      "Name": "Walnuts",
      "Taste": "Crunch",
      "Calories": 654,
      "Protein": 15.2,
      "Carbs": 13.7,
      "Fat": 65.2,
      "Fibre": 6.7,
      "Sugars": 2.61
    },
    {
      "Group": "Nuts",
      "Name": "Cashews",
      "Taste": "Crunch",
      "Calories": 553,
      "Protein": 18.2,
      "Carbs": 30.2,
      "Fat": 43.9,
      "Fibre": 3.3,
      "Sugars": 5.91
    },
    {
      "Group": "Nuts",
      "Name": "Pistachios",
      "Taste": "Crunch",
      "Calories": 562,
      "Protein": 20.3,
      "Carbs": 27.5,
      "Fat": 45.4,
      "Fibre": 10.3,
      "Sugars": 7.66
    },
    {
      "Group": "Nuts",
      "Name": "Peanuts",
      "Taste": "Crunch",
      "Calories": 567,
      "Protein": 25.8,
      "Carbs": 16.1,
      "Fat": 49.2,
      "Fibre": 8.5,
      "Sugars": 4.72
    },
    {
      "Group": "Nuts",
      "Name": "Macadamia Nuts",
      "Taste": "Crunch",
      "Calories": 718,
      "Protein": 7.9,
      "Carbs": 13.8,
      "Fat": 75.8,
      "Fibre": 8.6,
      "Sugars": 4.57
    },
    {
      "Group": "Nuts",
      "Name": "Brazil Nuts",
      "Taste": "Crunch",
      "Calories": 656,
      "Protein": 14.3,
      "Carbs": 11.7,
      "Fat": 66.4,
      "Fibre": 7.5,
      "Sugars": 2.33
    },
    {
      "Group": "Nuts",
      "Name": "Hazelnuts",
      "Taste": "Crunch",
      "Calories": 628,
      "Protein": 15,
      "Carbs": 16.7,
      "Fat": 60.8,
      "Fibre": 9.7,
      "Sugars": 4.34
    },
    {
      "Group": "Nuts",
      "Name": "Pecans",
      "Taste": "Crunch",
      "Calories": 691,
      "Protein": 9.2,
      "Carbs": 13.9,
      "Fat": 71.9,
      "Fibre": 9.6,
      "Sugars": 3.97
    },
    {
      "Group": "Nuts",
      "Name": "Pine Nuts",
      "Taste": "Crunch",
      "Calories": 673,
      "Protein": 13.7,
      "Carbs": 13.1,
      "Fat": 68.4,
      "Fibre": 3.7,
      "Sugars": 3.59
    },
    {
      "Group": "Seeds",
      "Name": "Sunflower Seeds",
      "Taste": "Crunch",
      "Calories": 584,
      "Protein": 20.8,
      "Carbs": 20,
      "Fat": 51.5,
      "Fibre": 8.6,
      "Sugars": 2.62
    },
    {
      "Group": "Seeds",
      "Name": "Pumpkin Seeds",
      "Taste": "Crunch",
      "Calories": 446,
      "Protein": 19,
      "Carbs": 10.7,
      "Fat": 49,
      "Fibre": 6,
      "Sugars": 1.4
    },
    {
      "Group": "Seeds",
      "Name": "Chia Seeds",
      "Taste": "Crunch",
      "Calories": 486,
      "Protein": 16.5,
      "Carbs": 42.1,
      "Fat": 30.7,
      "Fibre": 34.4,
      "Sugars": 0
    },
    {
      "Group": "Seeds",
      "Name": "Flaxseeds",
      "Taste": "Crunch",
      "Calories": 534,
      "Protein": 18.3,
      "Carbs": 28.9,
      "Fat": 42.2,
      "Fibre": 27.3,
      "Sugars": 1.55
    },
    {
      "Group": "Seeds",
      "Name": "Sesame Seeds",
      "Taste": "Crunch",
      "Calories": 573,
      "Protein": 17.7,
      "Carbs": 23.5,
      "Fat": 49.7,
      "Fibre": 11.8,
      "Sugars": 0.3
    },
    {
      "Group": "Seeds",
      "Name": "Hemp Seeds",
      "Taste": "Crunch",
      "Calories": 553,
      "Protein": 31.6,
      "Carbs": 8.7,
      "Fat": 49,
      "Fibre": 4,
      "Sugars": 1.5
    },
    {
      "Group": "Seeds",
      "Name": "Poppy Seeds",
      "Taste": "Crunch",
      "Calories": 525,
      "Protein": 17.9,
      "Carbs": 28.1,
      "Fat": 41.6,
      "Fibre": 19.5,
      "Sugars": 2.99
    },
    {
      "Group": "Seeds",
      "Name": "Quinoa",
      "Taste": "Crunch",
      "Calories": 368,
      "Protein": 14.1,
      "Carbs": 64.2,
      "Fat": 6.1,
      "Fibre": 7,
      "Sugars": 1.55
    },
    {
      "Group": "Seeds",
      "Name": "Amaranth",
      "Taste": "Crunch",
      "Calories": 371,
      "Protein": 13.6,
      "Carbs": 65.3,
      "Fat": 7,
      "Fibre": 6.7,
      "Sugars": 1.69
    },
    {
      "Group": "Seeds",
      "Name": "Buckwheat",
      "Taste": "Crunch",
      "Calories": 343,
      "Protein": 13.3,
      "Carbs": 71.5,
      "Fat": 3.4,
      "Fibre": 10,
      "Sugars": 3
    },
    {
      "Group": "Dried Fruits",
      "Name": "Raisins",
      "Taste": "Sweet, Tangy",
      "Calories": 299,
      "Protein": 0,
      "Carbs": 79.2,
      "Fat": 0,
      "Fibre": 3.7,
      "Sugars": 59.2
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Apricots",
      "Taste": "Sweet",
      "Calories": 241,
      "Protein": 0,
      "Carbs": 62.6,
      "Fat": 0,
      "Fibre": 7.3,
      "Sugars": 53.4
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Cranberries",
      "Taste": "Sweet,Tangy",
      "Calories": 325,
      "Protein": 0,
      "Carbs": 82.4,
      "Fat": 0,
      "Fibre": 5.7,
      "Sugars": 65
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Figs",
      "Taste": "Sweet",
      "Calories": 249,
      "Protein": 0,
      "Carbs": 63.9,
      "Fat": 0,
      "Fibre": 9.8,
      "Sugars": 47.9
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Dates",
      "Taste": "Sweet",
      "Calories": 277,
      "Protein": 0,
      "Carbs": 75,
      "Fat": 0,
      "Fibre": 6.7,
      "Sugars": 63.4
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Prunes",
      "Taste": "Sweet",
      "Calories": 240,
      "Protein": 0,
      "Carbs": 63.9,
      "Fat": 0,
      "Fibre": 7.1,
      "Sugars": 38.1
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Apples",
      "Taste": "Sweet",
      "Calories": 243,
      "Protein": 0,
      "Carbs": 65.9,
      "Fat": 0,
      "Fibre": 8.7,
      "Sugars": 57.2
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Mangoes",
      "Taste": "Sweet,Tangy",
      "Calories": 319,
      "Protein": 0,
      "Carbs": 78.6,
      "Fat": 0,
      "Fibre": 2.4,
      "Sugars": 66.3
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Cherries",
      "Taste": "Sweet",
      "Calories": 333,
      "Protein": 0,
      "Carbs": 81.5,
      "Fat": 0,
      "Fibre": 2.6,
      "Sugars": 68.1
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Blueberries",
      "Taste": "Tangy",
      "Calories": 317,
      "Protein": 0,
      "Carbs": 79.1,
      "Fat": 0,
      "Fibre": 7.3,
      "Sugars": 68
    },
    {
      "Group": "Dried Fruits",
      "Name": "Dried Goji Berries",
      "Taste": "Tangy, Sweet",
      "Calories": 320,
      "Protein": 12,
      "Carbs": 61.3,
      "Fat": 4.5,
      "Fibre": 10.2,
      "Sugars": 65
    },
    {
      "Group": "Extras",
      "Name": "Dark Chocolate Chips",
      "Taste": "Sweet",
      "Calories": 574,
      "Protein": 10,
      "Carbs": 48,
      "Fat": 38,
      "Fibre": 0,
      "Sugars": 35
    },
    {
      "Group": "Extras",
      "Name": "Dried Coconut Flakes",
      "Taste": "Sweet, Crunch",
      "Calories": 450,
      "Protein": 3.5,
      "Carbs": 15.23,
      "Fat": 28,
      "Fibre": 9,
      "Sugars": 7
    },
    {
      "Group": "Extras",
      "Name": "Cacao Nibs",
      "Taste": "Bitter",
      "Calories": 460,
      "Protein": 10,
      "Carbs": 28,
      "Fat": 50,
      "Fibre": 18,
      "Sugars": 4
    },
  ];

  // Initialize an empty list of TrailDataStruct
  final List<TrailDataStruct> trailDataList = [];

  // Iterate through the jsonList and create TrailDataStruct objects
  for (int index = 0; index < jsonList.length; index++) {
    final jsonItem = jsonList[index];
    TrailDataStruct trailData = TrailDataStruct(
      index: index,
      group: jsonItem['Group'],
      name: jsonItem['Name'],
      taste: jsonItem['Taste'],
      calories: double.parse(
          (jsonItem['Calories'].toDouble() / 20).toStringAsFixed(2)),
      protein: double.parse(
          (jsonItem['Protein'].toDouble() / 20).toStringAsFixed(2)),
      carbs:
          double.parse((jsonItem['Carbs'].toDouble() / 20).toStringAsFixed(2)),
      fat: double.parse((jsonItem['Fat'].toDouble() / 20).toStringAsFixed(2)),
      fibre:
          double.parse((jsonItem['Fibre'].toDouble() / 20).toStringAsFixed(2)),
      sugars:
          double.parse((jsonItem['Sugars'].toDouble() / 20).toStringAsFixed(2)),
      quantity: 1,
    );
    trailDataList.add(trailData);
  }

  return trailDataList;
}

double? convertGramToDecimal(double value) {
  // code that take double value and onvert them to decimal betwwen 0 to 1
  if (value <= 0) return 0.0;
  if (value >= 5) return 1.0;
  return value / 5.0;
}

List<String> getFInalTrailLabels(List<TrailDataStruct>? finalTrailMix) {
  // code to return a list of Trail lables from TrailData list
  if (finalTrailMix == null || finalTrailMix.isEmpty) {
    return [];
  }
  final trailLabels = <String>[];
  finalTrailMix.forEach((trailData) {
    trailLabels.add(trailData.name);
  });
  return trailLabels;
}

int convertStringToInt(String someString) {
  int tries;
  print("[convertStringToInt] slider onChanged: ${someString}");

  try {
    tries = double.parse(someString).toInt();
  } catch (err) {
    return 1;
  }

  return (tries ~/ 5);
}

double convertIntToDouble(int someInt) {
  // code that convert int to double and multiply 100.0
  return (someInt * 5).toDouble();
}

int getLimit(List<TrailDataStruct> trailMixList) {
  // return a the total count based on quantity property of trailMix list item
  int totalCount = 0;
  for (var item in trailMixList) {
    totalCount += item.quantity;
  }
  return totalCount * 5;
}

bool checkIfItemExists(
  List<TrailDataStruct> trailMix,
  TrailDataStruct trailData,
) {
  // check if trailData exists in trailMix based on property 'index'
  return trailMix.any((item) => item.index == trailData.index);
}

bool checkIfOverLimit(
  TrailDataStruct current,
  List<TrailDataStruct> trailMix,
) {
  int previousTotalCount = 0;
  int newTotalCount = 0;
  bool currentExists = false;

  for (var item in trailMix) {
    previousTotalCount += item.quantity;

    if (item.index == current.index) {
      currentExists = true;
      newTotalCount += current.quantity;
    } else {
      newTotalCount += item.quantity;
    }
  }

  // Check if current item exists in trailMix
  if (currentExists) {
    // Adjust the range for current item
    return current.quantity > (10 - (newTotalCount - current.quantity));
  } else {
    // Follow the original logic
    return current.quantity > (10 - previousTotalCount);
  }
}

int getTobeRemovedIndex(
  List<TrailDataStruct>? trailMix,
  TrailDataStruct current,
) {
  // code to get the index of current by filtering
  int index = trailMix!.indexWhere((element) => element.index == current.index);
  return index;
}

List<int> getFInalTrailValues(List<TrailDataStruct> trailMix) {
  final trailLabels = <int>[];
  trailMix.forEach((trailData) {
    trailLabels.add(trailData.quantity);
  });

  return trailLabels;
}

double getMultiplevalues(
  double originalQuantity,
  int multiplier,
) {
  double result = originalQuantity * multiplier;
  // code to return double value multiplied with a value

  // Check if result has a decimal value greater than 0

  return double.parse((originalQuantity * multiplier % 1 > 0)
      ? result.toStringAsFixed(1)
      : result.toStringAsFixed(0));
}

int getItemQuantityInMix(
  TrailDataStruct trailData,
  List<TrailDataStruct>? trailMix,
) {
  // code to return trailData quantity in the trailMix by filtering by `index`
  if (trailMix == null) {
    return 1;
  }
  final filteredList =
      trailMix.where((data) => data.index == trailData.index).toList();
  if (filteredList.isEmpty) {
    return 1;
  }
  return filteredList.first.quantity;
}

List<String> getTrailMixGroups(List<TrailDataStruct>? trailMixList) {
  // code to extract the group from trailData
  if (trailMixList == null) {
    return [];
  }

  final groups = <String>{};

  for (final trailData in trailMixList) {
    groups.add(trailData.group);
  }

  print("Trail mix group: ${groups}");

  return groups.toList();
}

List<MacroStruct> getMacroNutrientsTotal(List<TrailDataStruct> finalTrailMix) {
  double cumulativeProtein = 0;
  double cumulativeCarbs = 0;
  double cumulativeFibre = 0;
  double cumulativeSugars = 0;
  double cumulativeFat = 0;

  for (TrailDataStruct trailData in finalTrailMix) {
    cumulativeProtein += trailData.protein * trailData.quantity;
    cumulativeCarbs += trailData.carbs * trailData.quantity;
    cumulativeFibre += trailData.fibre * trailData.quantity;
    cumulativeSugars += trailData.sugars * trailData.quantity;
    cumulativeFat += trailData.fat * trailData.quantity;
  }

  double total = cumulativeProtein +
      cumulativeCarbs +
      cumulativeFibre +
      cumulativeSugars +
      cumulativeFat;

  List<MacroStruct> macros = [];

  macros.add(MacroStruct(
    color: const Color.fromARGB(255, 181, 54, 244),
    value: (cumulativeProtein / total) * 5,
    label: 'Protein',
    valueLabel: '${cumulativeProtein.toStringAsFixed(2)}g',
  ));

  macros.add(MacroStruct(
    color: Color.fromARGB(255, 243, 159, 33),
    value: (cumulativeCarbs / total) * 5,
    label: 'Carbs',
    valueLabel: '${cumulativeCarbs.toStringAsFixed(2)}g',
  ));

  macros.add(MacroStruct(
    color: Color.fromARGB(255, 20, 135, 35),
    value: (cumulativeFibre / total) * 5,
    label: 'Fibre',
    valueLabel: '${cumulativeFibre.toStringAsFixed(2)}g',
  ));

  macros.add(MacroStruct(
    color: const Color.fromARGB(255, 88, 88, 88),
    value: (cumulativeSugars / total) * 5,
    label: 'Sugars',
    valueLabel: '${cumulativeSugars.toStringAsFixed(2)}g',
  ));

  macros.add(MacroStruct(
    color: Color.fromARGB(255, 208, 47, 29),
    value: (cumulativeFat / total) * 5,
    label: 'Fat',
    valueLabel: '${cumulativeFat.toStringAsFixed(2)}g',
  ));

  return macros;
}

int returnIndexOfTrailData(
  TrailDataStruct trailData,
  List<TrailDataStruct> trailMix,
) {
  // return the index of trailData in trailMix by filtering based on property 'index'
  return trailMix.indexWhere((data) => data.index == trailData.index);
}

String returnTotalCalories(List<TrailDataStruct> trailMix) {
  // return the total calorie from trailMixData
  double totalCalories = 0;
  for (TrailDataStruct data in trailMix) {
    totalCalories += (data.calories * data.quantity).toDouble();
  }
  return totalCalories.toStringAsFixed(1);
}

List<MacroStruct> getFInalTrailMixUIOptions(
    List<TrailDataStruct> finalTrailMixList) {
  // convert trailList to macroList and return
  List<MacroStruct> macroList = [];
  int total = getLimit(finalTrailMixList);
  finalTrailMixList.forEach((trailData) {
    MacroStruct macroStruct = MacroStruct(
        label: trailData.name,
        value: (trailData.quantity * 5.0) / total,
        valueLabel: "${(trailData.quantity * 5.0)}g",
        color: Color.fromARGB(255, 104, 71, 238));
    macroList.add(macroStruct);
  });
  return macroList;
}

List<MixGroupStruct>? getMixGroups(List<TrailDataStruct>? trailListData) {
  // code to return a list of MixGroup Data
  if (trailListData == null || trailListData.isEmpty) {
    return null;
  }

  final List<MixGroupStruct> mixGroups = [];

  var dataList = [
    {
      "groupName": "Max Protein Mix",
      "description":
          "Great mix with low fat and low carbs for the protein buds.",
      "items": [
        {"Name": "Hemp Seeds", "quantity": 5},
        {"Name": "Peanuts", "quantity": 3},
        {"Name": "Almonds", "quantity": 1},
        {"Name": "Dark Chocolate Chips", "quantity": 1}
      ]
    },
    {
      "groupName": "Diabetic Mix",
      "description": "Keep your blood sugar low with this diabetic mix.",
      "items": [
        {"Name": "Almonds", "quantity": 3},
        {"Name": "Walnuts", "quantity": 2},
        {"Name": "Flaxseeds", "quantity": 1},
        {"Name": "Chia Seeds", "quantity": 1},
        {"Name": "Dark Chocolate Chips", "quantity": 1}
      ]
    },
  ];

  for (var data in dataList) {
    var groupName = data["groupName"];
    var description = data["description"];
    var itemsList = data["items"] as List<Map<String, dynamic>>;

    List<TrailDataStruct> filteredTrailData = [];

    for (var item in itemsList) {
      var itemName = item["Name"];
      var itemQuantity = item["quantity"] as int? ?? 1;

      TrailDataStruct matchingTrailData = trailListData.firstWhere(
        (trailData) => trailData.name == itemName,
        orElse: () => TrailDataStruct(name: "", quantity: 0),
      );

      // Create a new instance of TrailDataStruct with the same name
      TrailDataStruct updatedTrailData = TrailDataStruct(
          name: matchingTrailData.name,
          quantity: itemQuantity,
          calories: matchingTrailData.calories,
          protein: matchingTrailData.protein,
          carbs: matchingTrailData.carbs,
          sugars: matchingTrailData.sugars,
          fibre: matchingTrailData.fibre,
          index: matchingTrailData.index,
          taste: matchingTrailData.taste,
          group: matchingTrailData.group,
          fat: matchingTrailData.fat);

      filteredTrailData.add(updatedTrailData);
    }

    mixGroups.add(MixGroupStruct(
      groupName: groupName.toString(),
      description: description.toString(),
      items: filteredTrailData,
    ));
  }

  return mixGroups;
}

String getIngredientImage(String itemName) {
  // Map item names to corresponding asset images with JPG format
  Map<String, String> assetMap = {
    'Almonds': 'assets/images/almonds.jpg',
    'Walnuts': 'assets/images/walnuts.jpg',
    'Cashews': 'assets/images/cashews.jpg',
    'Pistachios': 'assets/images/pistachios.jpg',
    'Peanuts': 'assets/images/peanuts.jpg',
    'Macadamia Nuts': 'assets/images/macadamia_nuts.jpg',
    'Brazil Nuts': 'assets/images/brazil_nuts.jpg',
    'Hazelnuts': 'assets/images/hazelnuts.jpg',
    'Pecans': 'assets/images/pecans.jpg',
    'Pine Nuts': 'assets/images/pine_nuts.jpg',
    'Sunflower Seeds': 'assets/images/sunflower_seeds.jpg',
    'Pumpkin Seeds': 'assets/images/pumpkin_seeds.jpg',
    'Chia Seeds': 'assets/images/chia_seeds.jpg',
    'Flaxseeds': 'assets/images/flaxseeds.jpg',
    'Sesame Seeds': 'assets/images/sesame_seeds.jpg',
    'Hemp Seeds': 'assets/images/hemp_seeds.jpg',
    'Poppy Seeds': 'assets/images/poppy_seeds.jpg',
    'Quinoa': 'assets/images/quinoa.jpg',
    'Amaranth': 'assets/images/amaranth.jpg',
    'Buckwheat': 'assets/images/buckwheat.jpg',
    'Raisins': 'assets/images/raisins.jpg',
    'Dried Apricots': 'assets/images/dried_apricots.jpg',
    'Dried Cranberries': 'assets/images/dried_cranberries.jpg',
    'Dried Figs': 'assets/images/dried_figs.jpg',
    'Dried Dates': 'assets/images/dried_dates.jpg',
    'Dried Prunes': 'assets/images/dried_prunes.jpg',
    'Dried Apples': 'assets/images/dried_apples.jpg',
    'Dried Mangoes': 'assets/images/dried_mangoes.jpg',
    'Dried Cherries': 'assets/images/dried_cherries.jpg',
    'Dried Blueberries': 'assets/images/dried_blueberries.jpg',
    'Dried Goji Berries': 'assets/images/dried_goji_berries.jpg',
    'Dark Chocolate Chips': 'assets/images/dark_chocolate_chips.jpg',
    'Dried Coconut Flakes': 'assets/images/dried_coconut_flakes.jpg',
    'Cacao Nibs': 'assets/images/cacao_nibs.jpg',
    // Add more mappings as needed
  };

  // Use the asset image associated with the item name
  return assetMap[itemName] ?? 'assets/images/default_image.jpg';
}

String getGroupImage(String groupName) {
  Map<String, String> assetMap = {
    'Nuts': 'assets/images/nuts.png',
    'Seeds': 'assets/images/seeds.png',
    'Dried Fruits': 'assets/images/dried_fruits.png',
    'Extras': 'assets/images/extras.jpg',
    // Add more mappings as needed
  };

  // Use the asset image associated with the group name
  return assetMap[groupName] ?? 'assets/images/nuts.png';
}
