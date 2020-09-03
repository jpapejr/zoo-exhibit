import 'package:angular/angular.dart';

import 'src/enclosure/enclosure_component.dart';


// AngularDart info: https://angulardart.dev
// Components info: https://angulardart.dev/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    EnclosureComponent,
    ],
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
