import 'dart:html';
import 'dart:math';

import 'package:angular_components/angular_components.dart';
import 'package:angular/angular.dart';
import 'package:zoo_exhibit/src/animal.dart';

@Component(
  selector: 'enclosures',
  styleUrls: [
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'enclosure_component.css',
    ],
  templateUrl: 'enclosure_component.html',
  directives: [
    MaterialButtonComponent,
    MaterialIconComponent,
    coreDirectives,
  ]
)



class EnclosureComponent {
  final List<Animal> animals = [
    Animal(1, 'Tiger', ['roars!', 'paces back and forth', 'is sleeping'], 'img_url'),
    Animal(2, 'Elephant', ['sprays water on it\'s back', 'flaps it\'s ears', 'swats bugs away with it\'s tail'], 'img_url'),
  ];

  void observe(Animal animal) {
    var rng = Random();
    rng.nextInt(3);
    window.alert('The ${animal.name} ${animal.actions[rng.nextInt(3)]}');
  }

}