import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guia_de_moteis_go_challenge/dto/motel_dto.dart';
import 'package:guia_de_moteis_go_challenge/repositories/home_repository.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/animated_tab_bar.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_bloc.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_event.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_state.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/widgets/filters_bar.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/widgets/motel_card.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_colors.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_text_style.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/custom_scaffold.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/empty_state_widget.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/error_state_widget.dart';
import 'package:http/io_client.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? _selectedTab;
  final bloc = HomeBloc(HomeRepository(IOClient(HttpClient()..badCertificateCallback = (X509Certificate cert, String host, int port) => true)));
  final List<MotelDto> _motels = [];
  void Function()? _onTryAgain;

  @override
  void initState() {
    super.initState();
    bloc.add(GetHomeDataEvent(isPullToRefresh: false));
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      floatingActionButton: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.white,
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.map_outlined, color: AppColors.primary),
              SizedBox(width: 5),
              Text('Mapa', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
      appBarFooter: Column(
        children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('minha localização', style: AppTextStyle.body),
                  Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.white),
                ],
              ),
              if (_selectedTab == 1) ...[
                const Row(children: []),
              ],
            ],
          ),
        ],
      ),
      appBarCenter: Expanded(child: AnimatedTabBar(selectedIndex: (index) => _selectedTab = index)),
      appBarActions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: AppColors.white))],
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: bloc,
        listener: (context, state) {
          if (state is HomeStateSuccess) _motels.addAll(state.motels);
          if (state is HomeStateError) _onTryAgain = state.onTryAgain;
        },
        builder: (context, state) {
          if (state is HomeStateError) {
            return Center(child: ErrorStateWidget(onTryAgain: _onTryAgain));
          } else if (state is HomeStateEmpty) {
            return const Center(child: EmptyStateWidget());
          } else {
            return NotificationListener<ScrollNotification>(
              onNotification: (scrollInfo) {
                bloc.add(GetHomeDataEvent(isPullToRefresh: false, scrollNotification: scrollInfo));
                return false;
              },
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  FiltersBar(),
                  const Divider(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListView.builder(
                            padding: const EdgeInsets.only(bottom: 20),
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => MotelCard(motel: _motels[index], isLoading: state is HomeStateLoading),
                            shrinkWrap: true,
                            itemCount: _motels.length,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (state is HomeStatePaginationLoading)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Transform.scale(scale: .3, child: const CircularProgressIndicator()),
                    )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
