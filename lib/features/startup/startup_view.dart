import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:penaislam_app/features/startup/startup_viewmodel.dart';
import 'package:penaislam_app/ui/common/app_colors.dart';
import 'package:penaislam_app/ui/common/text_style.dart';
import 'package:penaislam_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({super.key});

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcPrimaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.menu_book_rounded,
              color: Colors.white,
              size: 80,
            ),
            verticalSpaceMedium,
            Text(
              'Cerita Islam',
              style: heading1Style(context).copyWith(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            verticalSpaceSmall,
            Text(
              'Kumpulan Cerita Islami Menarik',
              style: bodyStyle(context).copyWith(
                color: Colors.white.withOpacity(0.9),
              ),
              textAlign: TextAlign.center,
            ),
            verticalSpaceLarge,
            const SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
