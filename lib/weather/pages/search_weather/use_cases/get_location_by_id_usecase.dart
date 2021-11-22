import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather/weather/weather.dart';
import 'package:weather_repository/weather_repository.dart';

class GetLocationByIdUseCase
    extends UseCase<LocationResultById, LocationByIdParams> {
  GetLocationByIdUseCase({required this.iWeatherRepository});
  final IWeatherRepository iWeatherRepository;

  @override
  Future<Either<Failure, LocationResultById>> call(
      LocationByIdParams params) async {
    final result = await iWeatherRepository.getLocationResultByID(
      locationId: params.id,
    );
    return result.maybeWhen(orElse: () {
      return Left(InvalidInputFailure());
    }, completed: (s, d) {
      return Right(LocationResultById.fromJson(d));
    }, error: (s, sg, ex) {
      return Left(ServerFailure(message: sg));
    });
  }
}

class LocationByIdParams extends Equatable {
  const LocationByIdParams({
    required this.id,
  });

  final String id;

  @override
  List<Object> get props => [id];
}
