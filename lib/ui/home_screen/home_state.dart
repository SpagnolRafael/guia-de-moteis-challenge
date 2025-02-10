import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guia_de_moteis_go_challenge/dto/motel_dto.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.initial() = HomeStateInitial;
  factory HomeState.loading() = HomeStateLoading;
  factory HomeState.paginationLoading() = HomeStatePaginationLoading;
  factory HomeState.success({required final List<MotelDto> motels}) = HomeStateSuccess;
  factory HomeState.empty() = HomeStateEmpty;
  factory HomeState.error({required void Function() onTryAgain}) = HomeStateError;
}
