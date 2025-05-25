import 'package:penaislam_app/features/story_detail/story_detail_view.dart';
import 'package:penaislam_app/features/story/story_service.dart';
import 'package:penaislam_app/features/story/story_view.dart';
import 'package:penaislam_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:penaislam_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:penaislam_app/features/home/home_view.dart';
import 'package:penaislam_app/features/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: StoryView),
    MaterialRoute(page: StoryDetailView),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: StoryService),
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
  ],
)
class App {}
