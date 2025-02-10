import 'package:flutter/widgets.dart';

enum Filters {
  hasDiscount,
  free,
  hidro,
  pool,
  sauna,
  ofuro,
  eroticDecoration,
  thematicDecoration,
  eroticChair,
  danceFloor,
  privateGarage,
  minibar,
  internet,
  partySuite,
  acessibleSuite
}

class HomeEvent {}

class GetHomeDataEvent implements HomeEvent {
  final List<Filters>? query;
  final ScrollNotification? scrollNotification;
  final bool isPullToRefresh;
  GetHomeDataEvent({
    this.query,
    this.scrollNotification,
    required this.isPullToRefresh,
  });
}
