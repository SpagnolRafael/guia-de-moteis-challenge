import 'category_item_dto.dart';
import 'item_dto.dart';
import 'period_dto.dart';

class SuiteDto {
  final String name;
  final num qtd;
  final bool showFreeQuantity;
  final List<String> images;
  final List<ItemDto> itens;
  final List<CategoryItemDto> itensCategory;
  final List<PeriodDto> periods;

  SuiteDto({
    required this.name,
    this.qtd = 0,
    required this.showFreeQuantity,
    this.images = const [],
    this.itens = const [],
    this.itensCategory = const [],
    this.periods = const [],
  });

  factory SuiteDto.fromJson(Map<String, dynamic> json) {
    return SuiteDto(
      name: json['nome'] as String,
      qtd: json['qtd'] as num? ?? 0,
      showFreeQuantity: json['exibirQtdDisponiveis'] as bool,
      images: (json['fotos'] as List<dynamic>?)?.map((e) => e as String).toList() ?? [],
      itens: (json['itens'] as List<dynamic>?)?.map((e) => ItemDto.fromJson(e as Map<String, dynamic>)).toList() ?? [],
      itensCategory: (json['categoriaItens'] as List<dynamic>?)?.map((e) => CategoryItemDto.fromJson(e as Map<String, dynamic>)).toList() ?? [],
      periods: (json['periodos'] as List<dynamic>?)?.map((e) => PeriodDto.fromJson(e as Map<String, dynamic>)).toList() ?? [],
    );
  }
}
