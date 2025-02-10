import 'package:flutter/material.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_colors.dart';

class AnimatedTabBar extends StatefulWidget {
  final void Function(int index) selectedIndex;
  const AnimatedTabBar({super.key, required this.selectedIndex});

  @override
  State<AnimatedTabBar> createState() => _AnimatedTabBarState();
}

class _AnimatedTabBarState extends State<AnimatedTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    widget.selectedIndex(_tabController.index);
    _tabController.addListener(
        () => setState(() => widget.selectedIndex(_tabController.index)));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.primaryDark,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          alignment: _tabController.index == 0
              ? Alignment.centerLeft
              : Alignment.centerRight,
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 40,
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(30)),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () => _tabController.animateTo(0),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.electric_bolt,
                        color: _tabController.index == 0
                            ? AppColors.primary
                            : Colors.white,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'ir agora',
                        style: TextStyle(
                          color: _tabController.index == 0
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => _tabController.animateTo(1),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.calendar_month,
                              color: _tabController.index == 1
                                  ? AppColors.primary
                                  : Colors.white,
                              size: 20,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'ir outro dia',
                              style: TextStyle(
                                color: _tabController.index == 1
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
