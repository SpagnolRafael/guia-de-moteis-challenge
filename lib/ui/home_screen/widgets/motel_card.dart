import 'package:flutter/material.dart';
import 'package:guia_de_moteis_go_challenge/dto/motel_dto.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/widgets/motel_body.dart';

class MotelCard extends StatelessWidget {
  final MotelDto motel;
  final bool isLoading;
  const MotelCard({super.key, required this.motel, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(motel.image ?? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgws9EaQV6DEaQPy1KBjtNaQul5HkbFdqvHw&s'),
                radius: 20,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      motel.fantasy,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      '${motel.distance ?? ''}km - ${motel.neighborhood ?? ''}',
                      style: const TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Icon(Icons.favorite, color: Colors.grey[400]),
            ],
          ),
        ),
        SizedBox(
          height: 770,
          child: PageView.builder(
            itemCount: motel.suites.length,
            scrollDirection: Axis.horizontal,
            controller: PageController(
              viewportFraction: 0.94,
            ),
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.only(right: 10),
              width: MediaQuery.of(context).size.width - 40,
              child: MotelBody(suite: motel.suites[index]),
            ),
          ),
        ),
      ],
    );
  }
}
