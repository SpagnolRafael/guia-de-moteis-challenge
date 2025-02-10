import 'package:flutter/material.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_colors.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/drawer/custom_drawer.dart';

class CustomScaffold extends StatefulWidget {
  final Widget body;
  final Widget? appBarCenter;
  final List<Widget>? appBarActions;
  final Widget? appBarFooter;
  final Widget? floatingActionButton;
  const CustomScaffold({
    super.key,
    required this.body,
    this.appBarCenter,
    this.appBarActions,
    this.appBarFooter,
    this.floatingActionButton,
  });

  @override
  State<CustomScaffold> createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: widget.floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: AppColors.background,
      body: Container(
        color: AppColors.primary,
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: SizedBox(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () =>
                                _scaffoldKey.currentState?.openDrawer(),
                            icon:
                                const Icon(Icons.menu, color: AppColors.white)),
                        if (widget.appBarCenter != null) ...[
                          const SizedBox(width: 8),
                          widget.appBarCenter!
                        ],
                        if (widget.appBarActions != null) ...[
                          const SizedBox(width: 8),
                          ...widget.appBarActions!
                        ],
                      ],
                    ),
                    if (widget.appBarFooter != null) ...[
                      widget.appBarFooter!,
                    ],
                    const SizedBox(height: 15),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: widget.body,
              ),
            )
          ],
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
