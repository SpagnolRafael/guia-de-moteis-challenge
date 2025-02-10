class DiscountDto {
  final num? discount;

  DiscountDto({
    this.discount,
  });

  factory DiscountDto.fromJson(Map<String, dynamic> json) {
    return DiscountDto(
      discount: json['desconto'] as num?,
    );
  }
}
