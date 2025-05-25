import 'package:penaislam_app/app/app.locator.dart';
import 'package:penaislam_app/features/story/story_model.dart';
import 'package:penaislam_app/features/story/story_service.dart';
import 'package:stacked/stacked.dart';

class StoryDetailViewModel extends BaseViewModel {
  final _storyService = locator<StoryService>();

  Story? _story;
  Story? get story => _story;

  void setStory(String storyId) {
    setBusy(true);
    try {
      _story = _storyService.getStoryById(storyId);
      notifyListeners();
    } catch (e) {
      setError(e);
    } finally {
      setBusy(false);
    }
  }

  void toggleFavorite() {
    if (_story != null) {
      _storyService.toggleFavorite(_story!.id);
      _story = _storyService.getStoryById(_story!.id);
      notifyListeners();
    }
  }
}
