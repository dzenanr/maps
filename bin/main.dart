// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:maps/maps.dart';

main() {
  var countryCitiesMap = 
      {'Canada' : ['Toronto', 'Montreal', 'Vancouver'],
       'USA'    : ['New York', 'San Francisco', 'Boston', 'Chicago'],
       'France' : ['Paris', 'Marseille', 'Bordeaux']};
  print('');
  print(countryCitiesMap);
  print(sortedKeys(countryCitiesMap));
  
  var usaCities = keyValue(countryCitiesMap, 'USA');
  usaCities.sort();
  print('');
  print(usaCities);
  
  var countryCityPopulation = 
    {'Canada' : 
        {'Toronto' : 5500000, 
         'Montreal' : 4200000,
         'Vancouver' : 2300000
        },
     'USA' : 
         {'New York' : 8500000,
          'San Francisco' : 800000,
          'Boston' : 800000,
          'Chicago' : 2800000
         },
     'France' : 
         {'Paris' : 2400000,
          'Marseille' : 865000,
          'Bordeaux' : 250000 
         }
    };
  print('');
  print(countryPopulation(countryCityPopulation, 'Canada'));
  var biggestPopulation = countryCityBiggestPopulation(countryCityPopulation, 'USA');
  print(biggestPopulation);
  print(countryBiggestCity(countryCityPopulation, 'USA').join(' '));
  var smallestPopulation = countryCitySmallestPopulation(countryCityPopulation, 'USA');
  print(smallestPopulation);
  print(countrySmallestCity(countryCityPopulation, 'USA').join(', '));
  
  var contacts = 
      [{'courriel' : 'ptremblay@gmail.com', 
        'nom' : 'Tremblay', 
        'prenom' : 'Pierre', 
        'telephone' : '418-765-9876'
       }, 
       {'courriel' : 'dr@gmail.com', 
        'nom' : 'Ridjanovic', 
        'prenom' : 'Dzenan', 
        'telephone' : '418-766-8877'
       }
      ];
  print('');
  print(contacts);
  
  Map<String, int> scores = {'Bob': 36};
  for (var key in ['Bob', 'Rohan', 'Sophena']) {
    scores.putIfAbsent(key, () => key.length);
  }
  print('');
  print(scores);
  scores['Bob'] = 3;
  print(scores);
  
  print('');
  Map usaCityPopulationMap = countryCityPopulation['USA'];
  var total = 0;
  var usa = [];
  usaCityPopulationMap.forEach((k, v) {total = total + v; usa.add(k);});
  var avg = total / usaCityPopulationMap.length;
  print(avg);
  print(usa);
}
