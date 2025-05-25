import 'package:penaislam_app/app/app.locator.dart';
import 'package:penaislam_app/app/app.router.dart';
import 'package:penaislam_app/features/story/story_model.dart';
import 'package:penaislam_app/features/story/story_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _storyService = locator<StoryService>();

  List<Story> get stories => _storyService.getStories();
  List<String> get categories => _storyService.getCategories();

  String? _selectedCategory;
  String? get selectedCategory => _selectedCategory;

  List<Story> get filteredStories {
    if (_selectedCategory == null) {
      return stories;
    }
    return stories
        .where((story) => story.category == _selectedCategory)
        .toList();
  }

  void selectCategory(String? category) {
    _selectedCategory = category;
    notifyListeners();
  }

  void navigateToStoryDetail(String storyId) {
    _navigationService.navigateToStoryDetailView(storyId: storyId);
  }

  void navigateToStoryList() {
    _navigationService.navigateToStoryView();
  }
}
