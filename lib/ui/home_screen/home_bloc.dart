import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guia_de_moteis_go_challenge/dto/motel_dto.dart';
import 'package:guia_de_moteis_go_challenge/repositories/home_repository.dart';
import 'package:guia_de_moteis_go_challenge/services/error_report.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_event.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repository;
  HomeBloc(this._repository) : super(HomeState.initial()) {
    on<GetHomeDataEvent>((event, emit) => _getData(event, emit));
  }

  HomeEvent? previousEvent;
  int currentPage = 0;
  bool fetchedLastPage = false;
  bool isListLocked = false;
  List<MotelDto> motels = [];

  @override
  void onEvent(HomeEvent event) {
    previousEvent = event;
    super.onEvent(event);
  }

  void retry() {
    if (previousEvent != null) {
      add(previousEvent!);
    }
  }

  Future<void> _getData(GetHomeDataEvent event, Emitter<HomeState> emit) async {
    try {
      if (_shouldFetchNextPage(event.scrollNotification)) {
        emit(motels.isEmpty ? HomeState.loading() : HomeState.paginationLoading());
        isListLocked = true;
        if (event.scrollNotification == null) _clearCache();
        final data = await _repository.getHomeData();
        currentPage = data.page as int;
        motels.addAll(data.motels);
        if (data.motels.length < data.itensPerPage) fetchedLastPage = true;
        isListLocked = false;
        emit(motels.isEmpty ? HomeState.empty() : HomeState.success(motels: motels));
      }
    } catch (error, stacktrace) {
      ErrorReport().send(error, stacktrace);
      emit(HomeState.error(onTryAgain: retry));
    }
  }

  bool _shouldFetchNextPage(ScrollNotification? scrollInfo) {
    if (scrollInfo == null) return true;
    if (isListLocked || fetchedLastPage) return false;
    if (scrollInfo.metrics.axisDirection.index != 2) return false;
    final nextPageFetchingThreshold = scrollInfo.metrics.maxScrollExtent;
    return scrollInfo.metrics.pixels >= nextPageFetchingThreshold;
  }

  void _clearCache() {
    currentPage = 0;
    fetchedLastPage = false;
    motels.clear();
  }
}
