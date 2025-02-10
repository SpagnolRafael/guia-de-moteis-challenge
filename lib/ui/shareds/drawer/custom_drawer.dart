import 'package:flutter/material.dart';
import 'package:guia_de_moteis_go_challenge/dto/menu_option.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_colors.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_text_style.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/drawer/menu_card.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final List<MenuOption> _menus = [
    MenuOption(name: 'login', icon: Icons.person),
    MenuOption(name: 'ajuda', icon: Icons.help_outline_rounded),
    MenuOption(name: 'configurações', icon: Icons.settings),
    MenuOption(name: 'comunicar problema', icon: Icons.bug_report_outlined),
    MenuOption(
        name: 'tem um motel? faça parte', icon: Icons.handshake_outlined),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            color: AppColors.red,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color: AppColors.red,
                              size: 18,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text('go fidelidade',
                            style: AppTextStyle.header.copyWith(fontSize: 34)),
                        const Spacer(),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: AppColors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            size: 15,
                            color: AppColors.red,
                          ),
                        )
                      ],
                    ),
                    const Text(
                        'acumule selinhos e troque por reservas grátis.\nvale em todos os motéis e horários!',
                        style: AppTextStyle.body),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ListView.separated(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      MenuCard(option: _menus[index]),
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: _menus.length,
                ),
              ],
            ),
          ),
          const SafeArea(
              child: Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text('versão 1.0.0'),
          ))
        ],
      ),
    );
  }
}
