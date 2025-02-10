import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:guia_de_moteis_go_challenge/dto/suite_dto.dart';
import 'package:guia_de_moteis_go_challenge/ui/shareds/app_defaults/app_colors.dart';

class MotelBody extends StatelessWidget {
  final SuiteDto suite;
  const MotelBody({super.key, required this.suite});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    suite.images.first,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  suite.name,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 5),
                if (suite.showFreeQuantity)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.lock_clock, color: Colors.red, size: 16),
                      const SizedBox(width: 5),
                      Text(
                        'só mais ${suite.qtd} pelo app',
                        style: const TextStyle(color: Colors.red, fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                const SizedBox(height: 7),
              ],
            ),
          ),
        ),
        const SizedBox(height: 6),
        Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: suite.itensCategory.map((e) => Image.network(e.icon!, height: 40)).toList(),
            ),
          ),
        ),
        const SizedBox(height: 6),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final period = suite.periods[index];
            return Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            period.formattedTime,
                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                          ),
                          Row(
                            children: [
                              Text(
                                UtilBrasilFields.obterReal(period.totalValue.toDouble()),
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w300,
                                    decoration: period.discount != null ? TextDecoration.lineThrough : null,
                                    color: period.discount != null ? AppColors.grey : null),
                              ),
                              if (period.discount != null) ...[
                                const SizedBox(width: 15),
                                Text(
                                  UtilBrasilFields.obterReal(period.discount!.discount!.toDouble()),
                                  style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                      const Icon(Icons.chevron_right, color: Colors.grey, size: 30),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 5),
          itemCount: suite.periods.length,
        )
      ],
    );
  }
}
