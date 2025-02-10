import 'discount_dto.dart';

class PeriodDto {
  final String formattedTime;
  final num value;
  final num totalValue;
  final bool courtesy;
  final DiscountDto? discount;

  PeriodDto({
    required this.formattedTime,
    required this.value,
    required this.totalValue,
    required this.courtesy,
    this.discount,
  });

  factory PeriodDto.fromJson(Map<String, dynamic> json) {
    return PeriodDto(
      formattedTime: json['tempoFormatado'] as String,
      value: json['valor'] as num,
      totalValue: json['valorTotal'] as num,
      courtesy: json['temCortesia'] as bool,
      discount: json['desconto'] != null ? DiscountDto.fromJson(json['desconto'] as Map<String, dynamic>) : null,
    );
  }
}
