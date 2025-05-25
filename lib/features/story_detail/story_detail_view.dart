import 'package:flutter/material.dart';
import 'package:penaislam_app/features/story_detail/story_detail_viewmodel.dart';
import 'package:penaislam_app/ui/common/app_colors.dart';
import 'package:penaislam_app/ui/common/text_style.dart';
import 'package:penaislam_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

class StoryDetailView extends StackedView<StoryDetailViewModel> {
  final String storyId;

  const StoryDetailView({
    required this.storyId,
    Key? key,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StoryDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kcPrimaryColor,
        elevation: 0,
        title: Text(
          viewModel.story?.title ?? 'Cerita Islam',
          style: heading3Style(context).copyWith(color: Colors.white),
          overflow: TextOverflow.ellipsis,
        ),
        actions: [
          IconButton(
            icon: Icon(
              viewModel.story?.isFavorite ?? false
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.white,
            ),
            onPressed: viewModel.toggleFavorite,
          ),
        ],
      ),
      body: viewModel.isBusy
          ? const Center(
              child: CircularProgressIndicator(
                color: kcPrimaryColor,
              ),
            )
          : viewModel.hasError
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: kcErrorColor,
                          size: 50,
                        ),
                        verticalSpaceMedium,
                        Text(
                          'Maaf, cerita tidak dapat ditampilkan',
                          style: heading3Style(context),
                          textAlign: TextAlign.center,
                        ),
                        verticalSpaceSmall,
                        Text(
                          viewModel.modelError.toString(),
                          style: bodyStyle(context),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                )
              : _StoryDetailContent(viewModel: viewModel),
    );
  }

  @override
  StoryDetailViewModel viewModelBuilder(BuildContext context) =>
      StoryDetailViewModel();

  @override
  void onViewModelReady(StoryDetailViewModel viewModel) =>
      viewModel.setStory(storyId);
}

class _StoryDetailContent extends StatelessWidget {
  final StoryDetailViewModel viewModel;

  const _StoryDetailContent({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final story = viewModel.story;
    if (story == null) return const SizedBox();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Image
          if (story.imageUrl.isNotEmpty)
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(story.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),

          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  story.title,
                  style: heading2Style(context),
                ),
                verticalSpaceSmall,

                // Category
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: kcPrimaryColorLight,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    story.category,
                    style: categoryStyle(context),
                  ),
                ),
                verticalSpaceMedium,

                // Summary
                if (story.summary.isNotEmpty) ...[
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: kcLightGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      story.summary,
                      style: bodyStyle(context).copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  verticalSpaceMedium,
                ],

                // Content
                Text(
                  story.content,
                  style: storyContentStyle(context),
                ),

                verticalSpaceLarge,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
