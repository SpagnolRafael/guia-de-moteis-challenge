import 'package:guia_de_moteis_go_challenge/repositories/home_repository.dart';
import 'package:guia_de_moteis_go_challenge/services/error_report.dart';
import 'package:http/io_client.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeRepository extends Mock implements HomeRepository {}

class MockErrorReport extends Mock implements ErrorReport {}

class MockClientHttp extends Mock implements IOClient {}
