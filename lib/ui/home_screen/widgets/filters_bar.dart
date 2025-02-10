import 'package:flutter/material.dart';

class FiltersBar extends StatelessWidget {
  final List<Map<String, dynamic>> filters = [
    {'label': 'Filtros', 'icon': Icons.filter_list},
    {'label': 'Com desconto'},
    {'label': 'Disponíveis'},
    {'label': 'Hidro'},
    {'label': 'Piscina'},
  ];

  FiltersBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: filters.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final filter = filters[index];

          return OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              side: BorderSide(color: Colors.grey[300]!, width: 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.pink)),
            ),
            child: Row(
              children: [
                if (filter.containsKey('icon')) ...[
                  Icon(filter['icon'], size: 15, color: Colors.black),
                  const SizedBox(width: 5),
                ],
                Text(
                  filter['label'],
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
