abstract class RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {
  final String errorMessage;

  RegisterErrorState(this.errorMessage);
}

class RegisterSuccessState extends RegisterStates {}
