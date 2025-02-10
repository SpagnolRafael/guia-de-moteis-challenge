class CategoryItemDto {
  final String name;
  final String? icon;

  CategoryItemDto({
    required this.name,
    this.icon,
  });

  factory CategoryItemDto.fromJson(Map<String, dynamic> json) {
    return CategoryItemDto(
      name: json['nome'] as String,
      icon: json['icone'] as String?,
    );
  }
}
