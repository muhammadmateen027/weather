import 'package:get_it/get_it.dart';
import 'package:network/network.dart';
import 'package:weather/weather/weather.dart';
import 'package:weather_repository/weather_repository.dart';

final GetIt locator = GetIt.instance;

Future<void> setUp() async {
  final client = NetworkClient(baseUrl: 'https://www.metaweather.com/');
  locator.registerLazySingleton<IWeatherRepository>(
        () => WeatherRepository(client: client),
  );
  locator.registerFactory<LocationSearchUseCase>(
        () => LocationSearchUseCase(iWeatherRepository: locator()),
  );
  locator.registerFactory<GetLocationByIdAndDateUseCase>(
        () => GetLocationByIdAndDateUseCase(iWeatherRepository: locator()),
  );
  locator.registerFactory<GetLocationByIdUseCase>(
        () => GetLocationByIdUseCase(iWeatherRepository: locator()),
  );
}
