import 'package:flutter/material.dart';
import 'package:penaislam_app/features/home/home_viewmodel.dart';
import 'package:penaislam_app/ui/common/app_colors.dart';
import 'package:penaislam_app/ui/common/text_style.dart';
import 'package:penaislam_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcScaffoldColor,
      appBar: AppBar(
        title: Text(
          'Cerita Islam',
          style: heading3Style(context).copyWith(color: Colors.white),
        ),
        backgroundColor: kcPrimaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: viewModel.navigateToStoryList,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories
            Container(
              color: kcPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                    child: Text(
                      'Kategori',
                      style: subtitleStyle(context).copyWith(
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        _CategoryChip(
                          label: 'Semua',
                          isSelected: viewModel.selectedCategory == null,
                          onTap: () => viewModel.selectCategory(null),
                        ),
                        ...viewModel.categories.map(
                          (category) => _CategoryChip(
                            label: category,
                            isSelected: viewModel.selectedCategory == category,
                            onTap: () => viewModel.selectCategory(category),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Stories
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                viewModel.selectedCategory != null
                    ? 'Cerita ${viewModel.selectedCategory}'
                    : 'Semua Cerita',
                style: heading2Style(context),
              ),
            ),

            Expanded(
              child: viewModel.filteredStories.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.search_off,
                            size: 64,
                            color: kcMediumGrey,
                          ),
                          verticalSpaceSmall,
                          Text(
                            'Tidak ada cerita di kategori ini',
                            style: bodyStyle(context),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(bottom: 20),
                      itemCount: viewModel.filteredStories.length,
                      itemBuilder: (context, index) {
                        final story = viewModel.filteredStories[index];
                        return _StoryCard(
                          story: story,
                          onTap: () =>
                              viewModel.navigateToStoryDetail(story.id),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}

class _CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? kcPrimaryColor : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final dynamic story;
  final VoidCallback onTap;

  const _StoryCard({
    required this.story,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            if (story.imageUrl.isNotEmpty)
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Image.network(
                  story.imageUrl,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Container(
                    height: 150,
                    color: kcPrimaryColorLight,
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: kcPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),

            // Content
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: kcPrimaryColorLight,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      story.category,
                      style: categoryStyle(context),
                    ),
                  ),
                  verticalSpaceSmall,

                  // Title
                  Text(
                    story.title,
                    style: heading3Style(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpaceSmall,

                  // Summary
                  Text(
                    story.summary,
                    style: bodyStyle(context),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpaceSmall,

                  // Read more
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Baca Selengkapnya',
                        style: subtitleStyle(context).copyWith(
                          color: kcPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (story.isFavorite)
                        const Icon(
                          Icons.favorite,
                          color: kcErrorColor,
                          size: 20,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
