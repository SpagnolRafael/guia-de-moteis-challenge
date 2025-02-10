class ItemDto {
  final String name;

  ItemDto({
    required this.name,
  });

  factory ItemDto.fromJson(Map<String, dynamic> json) {
    return ItemDto(
      name: json['nome'] as String,
    );
  }
}
