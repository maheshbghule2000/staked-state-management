import 'package:stacked/stacked.dart';
import 'package:stacked_counter_app/app/app.locator.dart';
import 'package:stacked_counter_app/app/app.router.dart';
import 'package:stacked_counter_app/services/counter_services.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  // final counterService=CounterService();
  final counterService = locator<CounterService>();

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateTo(Routes.homeView);
  }
  
}
