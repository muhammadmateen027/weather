import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:weather/weather/pages/search_weather/entities/failure.dart';
import 'package:weather/weather/pages/search_weather/use_cases/usecase.dart';
import 'package:weather_repository/weather_repository.dart';

class GetLocationByIdAndDateUseCase extends UseCase<
    List<LocationResultByIdAndDate>, LocationByIdAndDateParams> {
  GetLocationByIdAndDateUseCase({required this.iWeatherRepository});

  final IWeatherRepository iWeatherRepository;

  @override
  Future<Either<Failure, List<LocationResultByIdAndDate>>> call(
      LocationByIdAndDateParams params) async {
    final result = await iWeatherRepository.getLocationResultByIdAndDate(
      locationId: params.id,
      date: params.date,
      month: params.month,
      year: params.year,
    );
    return result.maybeWhen(orElse: () {
      return Left(InvalidInputFailure());
    }, completed: (s, d) {
      return Right(LocationResultByIdAndDateModel.fromJson(d).locationResult);
    }, error: (s, sg, ex) {
      return Left(ServerFailure(message: sg));
    });
  }
}

class LocationByIdAndDateParams extends Equatable {
  const LocationByIdAndDateParams({
    required this.id,
    required this.year,
    required this.month,
    required this.date,
  });

  final String id;
  final int year;
  final int month;
  final int date;

  @override
  List<Object> get props => [id, year, month, date];
}
