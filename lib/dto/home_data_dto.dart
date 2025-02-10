import 'motel_dto.dart';

class HomeDataDto {
  final num page;
  final num itensPerPage;
  final num totalSuites;
  final num totalMoteis;
  final int range;
  final num maxPages;
  final List<MotelDto> motels;

  HomeDataDto({
    required this.page,
    required this.itensPerPage,
    required this.totalSuites,
    required this.totalMoteis,
    required this.range,
    required this.maxPages,
    this.motels = const [],
  });

  factory HomeDataDto.fromJson(Map<String, dynamic> json) {
    return HomeDataDto(
      page: json['pagina'] as num,
      itensPerPage: json['qtdPorPagina'] as num,
      totalSuites: json['totalSuites'] as num,
      totalMoteis: json['totalMoteis'] as num,
      range: json['raio'] as int,
      maxPages: json['maxPaginas'] as num,
      motels: (json['moteis'] as List<dynamic>?)?.map((e) => MotelDto.fromJson(e as Map<String, dynamic>)).toList() ?? [],
    );
  }
}
