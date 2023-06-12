import 'package:stacked/stacked.dart';

import '../app/app.locator.dart';
import '../services/counter_services.dart';

class HomeViewModel extends BaseViewModel{
  final counterService=locator<CounterService>();
    // final counterService=CounterService(); 
}