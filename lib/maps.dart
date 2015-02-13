// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The maps library.
library maps;

List sortedKeys(Map map) {
  var keys = map.keys.toList();
  keys.sort();
  return keys;
}

Object keyValue(Map map, String key) {
  return map[key];
}

List valueKeys(Map map, value) {
  var result = [];
  map.forEach((k, v) => v == value ? result.add(k) : null);
  return result;
}

num countryPopulation(Map countryCityPopulation, String countryName) {
  var cityMap = countryCityPopulation[countryName];
  //return cityMap.values.fold(0, (pv, cityPopulation) => pv + cityPopulation);
  return cityMap.values.reduce((pv, cityPopulation) => pv + cityPopulation);
}

int countryCityBiggestPopulation(Map countryCityPopulation, String countryName) {
  var cityPopulationMap = countryCityPopulation[countryName];
  return cityPopulationMap.values.reduce((v, cityPopulation) => 
      v.compareTo(cityPopulation) == -1 ? cityPopulation : v);
}

List countryBiggestCity(Map countryCityPopulation, String countryName) {
  var cityPopulationMap = countryCityPopulation[countryName];
  var biggestPopulation = countryCityBiggestPopulation(countryCityPopulation, countryName);
  return valueKeys(cityPopulationMap, biggestPopulation);
}

num countryCitySmallestPopulation(Map countryCityPopulation, String countryName) {
  var cityPopulationMap = countryCityPopulation[countryName];
  return cityPopulationMap.values.reduce((v, cityPopulation) => 
      v.compareTo(cityPopulation) == 1 ? cityPopulation : v);
}

List countrySmallestCity(Map countryCityPopulation, String countryName) {
  var cityPopulationMap = countryCityPopulation[countryName];
  var smallestPopulation = countryCitySmallestPopulation(countryCityPopulation, countryName);
  return valueKeys(cityPopulationMap, smallestPopulation);
}



