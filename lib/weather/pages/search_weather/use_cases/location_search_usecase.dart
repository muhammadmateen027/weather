import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather/weather/weather.dart';
import 'package:weather_repository/weather_repository.dart';

class LocationSearchUseCase
    extends UseCase<List<LocationSearchModel>, LocationSearchParams> {
  LocationSearchUseCase({required this.iWeatherRepository});
  final IWeatherRepository iWeatherRepository;

  @override
  Future<Either<Failure, List<LocationSearchModel>>> call(
    LocationSearchParams params,
  ) async {
    final result = await iWeatherRepository.searchLocation(
      query: params.query,
      byLatLng: params.byLatLng,
    );
    return result.maybeWhen(
      orElse: () {
        return Left(InvalidInputFailure());
      },
      completed: (s, d) {
        return Right(LocationSearchResult.fromJson(d).locationSearchModel);
      },
      error: (s, sg, ex) {
        return Left(ServerFailure(message: sg));
      },
    );
  }
}

class LocationSearchParams extends Equatable {
  const LocationSearchParams({
    required this.query,
    required this.byLatLng,
  });

  final String query;
  final bool byLatLng;

  @override
  List<Object> get props => [query, byLatLng];
}
