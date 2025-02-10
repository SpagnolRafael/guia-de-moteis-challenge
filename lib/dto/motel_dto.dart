import 'suite_dto.dart';

class MotelDto {
  final String fantasy;
  final String? neighborhood;
  final num? distance;
  final num? favoriteCount;
  final String? image;
  final List<SuiteDto> suites;

  MotelDto({
    required this.fantasy,
    this.neighborhood,
    this.distance,
    this.favoriteCount,
    this.image,
    this.suites = const [],
  });

  factory MotelDto.fromJson(Map<String, dynamic> json) {
    return MotelDto(
      fantasy: json['fantasia'] as String,
      neighborhood: json['bairro'] as String?,
      distance: json['distancia'] as num?,
      favoriteCount: json['qtdFavoritos'] as num?,
      image: json['logo'] as String?,
      suites: (json['suites'] as List<dynamic>?)?.map((e) => SuiteDto.fromJson(e as Map<String, dynamic>)).toList() ?? [],
    );
  }
}
