import 'package:penaislam_app/app/app.locator.dart';
import 'package:penaislam_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    // Add any initialization logic here
    await Future.delayed(const Duration(seconds: 2));

    // Navigate to the home view
    await _navigationService.replaceWithHomeView();
  }
}
