import 'package:flutter/material.dart';

class EmptyStateWidget extends StatelessWidget {
  const EmptyStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Não localizamos nenhum motel para a localização atual');
  }
}
