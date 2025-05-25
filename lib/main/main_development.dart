import 'package:penaislam_app/main/bootstrap.dart';
import 'package:penaislam_app/models/enums/flavor.dart';
import 'package:penaislam_app/features/app/app_view.dart';

void main() {
  bootstrap(
    builder: () => const AppView(),
    flavor: Flavor.development,
  );
}
