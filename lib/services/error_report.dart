class ErrorReport {
  static ErrorReport _instance = ErrorReport._internal();

  ErrorReport._internal();

  factory ErrorReport() {
    return _instance;
  }

  static ErrorReport get instance => _instance;

  static void setInstanceForTesting(ErrorReport instance) {
    _instance = instance;
  }

  Future<void> send(dynamic error, dynamic stacktrace) async {
    await Future.delayed(const Duration(milliseconds: 200));
    // ignore: avoid_print
    print('Enviando dados do erro coletado....');
  }
}
