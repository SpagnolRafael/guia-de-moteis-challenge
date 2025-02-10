import 'package:flutter/material.dart';
import 'package:guia_de_moteis_go_challenge/dto/menu_option.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_colors.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_text_style.dart';

class MenuCard extends StatelessWidget {
  final MenuOption option;
  const MenuCard({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Icon(option.icon),
            const SizedBox(width: 15),
            Expanded(
                child: Text(option.name,
                    style: AppTextStyle.body
                        .copyWith(color: AppColors.black, fontSize: 16))),
            const Icon(Icons.keyboard_arrow_right_rounded)
          ],
        ),
      ),
    );
  }
}
