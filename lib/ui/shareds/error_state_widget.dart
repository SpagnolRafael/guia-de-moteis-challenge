import 'package:flutter/material.dart';

class ErrorStateWidget extends StatelessWidget {
  final void Function()? onTryAgain;
  const ErrorStateWidget({super.key, this.onTryAgain});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Ocorreu um erro'),
        if (onTryAgain != null) TextButton(onPressed: onTryAgain!, child: const Text('Tentar Novamente')),
      ],
    );
  }
}
