import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:guia_de_moteis_go_challenge/dto/home_data_dto.dart';
import 'package:guia_de_moteis_go_challenge/repositories/home_repository.dart';
import 'package:guia_de_moteis_go_challenge/services/error_report.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_bloc.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_event.dart';
import 'package:guia_de_moteis_go_challenge/ui/home_screen/home_state.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import 'mock_data.dart';
import 'mocks.dart';

void main() {
  late HomeRepository repository;
  late MockClientHttp mockClient;

  setUp(() {
    mockClient = MockClientHttp();
    repository = HomeRepository(mockClient);
    registerFallbackValue(Uri.parse('http://url.com'));
  });

  test('should return HomeDataDto when http response equals to 200', () async {
    when(() => mockClient.get(any())).thenAnswer(
      (_) => Future.value(http.Response(MockData.json, 200, headers: {'content-type': 'application/json; charset=utf-8'})),
    );

    final result = await repository.getHomeData();

    expect(result, isA<HomeDataDto>());
    expect(result.totalMoteis, equals(1));
  });

  test('should throw an exception when request fails', () async {
    when(() => mockClient.get(any())).thenThrow(Exception("Erro na requisição"));

    expect(() async => await repository.getHomeData(), throwsException);
  });
  test('should serialize data from repository', () {
    final json = MockData.json;
    final data = HomeDataDto.fromJson(jsonDecode(json)["data"]);
    expect(data.totalMoteis, 1);
  });

  test('should returne response ok', () {
    final json = MockData.json;
    expect(jsonDecode(json)['sucesso'], true);
  });

  test('should return a list not a object', () {
    final json = MockData.json;
    final data = jsonDecode(json)["data"];
    expect(data["moteis"], isList);
  });

  test('should validate empty state', () async {
    final repository = MockHomeRepository();
    final bloc = HomeBloc(repository);

    when(() => repository.getHomeData()).thenAnswer((_) async => HomeDataDto.fromJson(jsonDecode(MockData.emptyJson)["data"]));

    bloc.add(GetHomeDataEvent(isPullToRefresh: false));

    await expectLater(
      bloc.stream,
      emitsInOrder([
        isA<HomeStateLoading>(),
        predicate((state) => state is HomeStateEmpty && bloc.motels.isEmpty),
      ]),
    );
  });

  test('should send report to analytics', () async {
    final repository = MockHomeRepository();
    final bloc = HomeBloc(repository);

    when(() => repository.getHomeData()).thenThrow(Exception('Erro ao buscar dados'));

    bloc.add(GetHomeDataEvent(isPullToRefresh: false));

    await expectLater(
      bloc.stream,
      emitsInOrder([
        isA<HomeStateLoading>(),
        isA<HomeStateError>(),
      ]),
    );
  });

  test('should call ErrorReport.send when an exception occurs', () async {
    final exception = Exception('Erro ao buscar dados');
    final repository = MockHomeRepository();
    final errorReport = MockErrorReport();
    final bloc = HomeBloc(repository);

    when(() => errorReport.send(any(), any())).thenAnswer((_) async => Future.value());

    ErrorReport.setInstanceForTesting(errorReport);

    when(() => repository.getHomeData()).thenThrow(exception);

    bloc.add(GetHomeDataEvent(isPullToRefresh: false));

    await expectLater(
      bloc.stream,
      emitsInOrder([
        isA<HomeStateLoading>(),
        isA<HomeStateError>(),
      ]),
    );

    verify(() => errorReport.send(exception, any(that: isA<StackTrace>()))).called(1);
  });
}
