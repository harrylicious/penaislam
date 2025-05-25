import 'package:flutter/material.dart';
import 'package:penaislam_app/features/story/story_viewmodel.dart';
import 'package:penaislam_app/ui/common/app_colors.dart';
import 'package:penaislam_app/ui/common/text_style.dart';
import 'package:penaislam_app/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

class StoryView extends StackedView<StoryViewModel> {
  const StoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StoryViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kcScaffoldColor,
        appBar: AppBar(
          title: Text(
            'Koleksi Cerita',
            style: heading3Style(context).copyWith(color: Colors.white),
          ),
          backgroundColor: kcPrimaryColor,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Semua Cerita', icon: Icon(Icons.menu_book)),
              Tab(text: 'Favorit', icon: Icon(Icons.favorite)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _AllStoriesTab(viewModel: viewModel),
            _FavoriteStoriesTab(viewModel: viewModel),
          ],
        ),
      ),
    );
  }

  @override
  StoryViewModel viewModelBuilder(BuildContext context) => StoryViewModel();
}

class _AllStoriesTab extends StatelessWidget {
  final StoryViewModel viewModel;

  const _AllStoriesTab({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search and Filter
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          color: Colors.white,
          child: Column(
            children: [
              // Search bar
              TextField(
                onChanged: viewModel.updateSearchQuery,
                decoration: InputDecoration(
                  hintText: 'Cari cerita...',
                  prefixIcon: const Icon(Icons.search, color: kcMediumGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: kcBackgroundColor,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              ),
              verticalSpaceSmall,

              // Category filter
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterChip(
                      label: const Text('Semua'),
                      selected: viewModel.selectedCategory == null,
                      onSelected: (_) => viewModel.selectCategory(null),
                      backgroundColor: kcBackgroundColor,
                      selectedColor: kcPrimaryColorLight,
                      checkmarkColor: kcPrimaryColor,
                      labelStyle: TextStyle(
                        color: viewModel.selectedCategory == null
                            ? kcPrimaryColor
                            : kcMediumGrey,
                      ),
                    ),
                    horizontalSpaceSmall,
                    ...viewModel.categories.map(
                      (category) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: FilterChip(
                          label: Text(category),
                          selected: viewModel.selectedCategory == category,
                          onSelected: (_) => viewModel.selectCategory(category),
                          backgroundColor: kcBackgroundColor,
                          selectedColor: kcPrimaryColorLight,
                          checkmarkColor: kcPrimaryColor,
                          labelStyle: TextStyle(
                            color: viewModel.selectedCategory == category
                                ? kcPrimaryColor
                                : kcMediumGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Results count
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '${viewModel.filteredStories.length} cerita ditemukan',
              style: subtitleStyle(context),
            ),
          ),
        ),

        // Story list
        Expanded(
          child: viewModel.filteredStories.isEmpty
              ? _EmptyStateView(
                  message: viewModel.searchQuery != null
                      ? 'Tidak ada cerita yang sesuai dengan pencarian'
                      : 'Tidak ada cerita di kategori ini',
                )
              : ListView.builder(
                  padding: const EdgeInsets.only(bottom: 16),
                  itemCount: viewModel.filteredStories.length,
                  itemBuilder: (context, index) {
                    final story = viewModel.filteredStories[index];
                    return _StoryListItem(
                      story: story,
                      onTap: () => viewModel.navigateToStoryDetail(story.id),
                      onFavoriteToggle: () =>
                          viewModel.toggleFavorite(story.id),
                    );
                  },
                ),
        ),
      ],
    );
  }
}

class _FavoriteStoriesTab extends StatelessWidget {
  final StoryViewModel viewModel;

  const _FavoriteStoriesTab({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final favoriteStories = viewModel.getFavoriteStories();

    return favoriteStories.isEmpty
        ? _EmptyStateView(
            message: 'Belum ada cerita favorit',
            icon: Icons.favorite_border,
            hint: 'Tambahkan cerita ke favorit dengan menekan icon ❤️',
          )
        : ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemCount: favoriteStories.length,
            itemBuilder: (context, index) {
              final story = favoriteStories[index];
              return _StoryListItem(
                story: story,
                onTap: () => viewModel.navigateToStoryDetail(story.id),
                onFavoriteToggle: () => viewModel.toggleFavorite(story.id),
              );
            },
          );
  }
}

class _StoryListItem extends StatelessWidget {
  final dynamic story;
  final VoidCallback onTap;
  final VoidCallback onFavoriteToggle;

  const _StoryListItem({
    required this.story,
    required this.onTap,
    required this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              if (story.imageUrl.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    story.imageUrl,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 80,
                      height: 80,
                      color: kcPrimaryColorLight,
                      child: const Icon(
                        Icons.image_not_supported,
                        color: kcPrimaryColor,
                      ),
                    ),
                  ),
                )
              else
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: kcPrimaryColorLight,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.menu_book,
                    color: kcPrimaryColor,
                    size: 40,
                  ),
                ),
              horizontalSpaceMedium,

              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      story.title,
                      style: heading3Style(context).copyWith(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpaceTiny,
                    Text(
                      story.category,
                      style: categoryStyle(context),
                    ),
                    verticalSpaceTiny,
                    Text(
                      story.summary,
                      style: bodyStyle(context),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),

              // Favorite icon
              IconButton(
                icon: Icon(
                  story.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: story.isFavorite ? kcErrorColor : kcMediumGrey,
                ),
                onPressed: onFavoriteToggle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyStateView extends StatelessWidget {
  final String message;
  final IconData icon;
  final String? hint;

  const _EmptyStateView({
    required this.message,
    this.icon = Icons.search_off,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 64,
              color: kcMediumGrey,
            ),
            verticalSpaceMedium,
            Text(
              message,
              style: bodyStyle(context).copyWith(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            if (hint != null) ...[
              verticalSpaceMedium,
              Text(
                hint!,
                style: captionStyle(context),
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
