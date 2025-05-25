import 'package:penaislam_app/app/app.locator.dart';
import 'package:penaislam_app/app/app.router.dart';
import 'package:penaislam_app/features/story/story_model.dart';
import 'package:penaislam_app/features/story/story_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StoryViewModel extends BaseViewModel {
  final _storyService = locator<StoryService>();
  final _navigationService = locator<NavigationService>();

  List<Story> get stories => _storyService.getStories();
  List<String> get categories => _storyService.getCategories();

  String? _searchQuery;
  String? get searchQuery => _searchQuery;

  String? _selectedCategory;
  String? get selectedCategory => _selectedCategory;

  List<Story> get filteredStories {
    List<Story> result = stories;

    // Filter by category
    if (_selectedCategory != null) {
      result =
          result.where((story) => story.category == _selectedCategory).toList();
    }

    // Filter by search query
    if (_searchQuery != null && _searchQuery!.isNotEmpty) {
      result = result
          .where((story) =>
              story.title.toLowerCase().contains(_searchQuery!.toLowerCase()) ||
              story.summary.toLowerCase().contains(_searchQuery!.toLowerCase()))
          .toList();
    }

    return result;
  }

  void updateSearchQuery(String query) {
    _searchQuery = query.isEmpty ? null : query;
    notifyListeners();
  }

  void selectCategory(String? category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void navigateToStoryDetail(String storyId) {
    _navigationService.navigateToStoryDetailView(storyId: storyId);
  }

  List<Story> getFavoriteStories() {
    return stories.where((story) => story.isFavorite).toList();
  }

  void toggleFavorite(String storyId) {
    _storyService.toggleFavorite(storyId);
    notifyListeners();
  }
}
