class Failures{
  String? errorMessage;
  Failures({required this.errorMessage});
}
class ServerError extends Failures{
  ServerError({required super.errorMessage});
}
class NeworkError extends Failures{
  NeworkError({required super.errorMessage});

}