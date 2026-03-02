import '../../../model/settings/app_settings.dart';
import 'app_settings_repository.dart';

class AppSettingsRepositoryMock implements AppSettingsRepository {
  AppSettings _settings = AppSettings(themeColor: ThemeColor.blue);

  @override
  Future<AppSettings> load() {
    return Future.value(_settings);
  }

  @override
  Future<void> save(AppSettings settings) {
    _settings = settings;
    return Future.value();
  }
}
