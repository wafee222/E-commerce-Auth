import 'package:ecommerce/Domain/UseCases/RegisterUseCase.dart';
import 'package:ecommerce/Ui/Auth/Register/Cubit/RegisterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreenViewModel extends Cubit<RegisterStates> {

  RegisterScreenViewModel({required this.registerUseCase})
      : super(RegisterInitialState());

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RegisterUseCase registerUseCase;


  void register() async {
    if (formKey.currentState!.validate()) {
      final fullName = fullNameController.text;
      final mobileNumber = mobileNumberController.text;
      final email = emailController.text;
      final password = passwordController.text;

      emit(RegisterLoadingState());

      var either = await registerUseCase.invoke(
          fullName, email, password, repasswordController.text, mobileNumber);
      either.fold(
              (failure) {
            emit(RegisterErrorState(
                failure.errorMessage ?? "Unknown error occurred"));
          },
              (success) {
            emit(RegisterSuccessState());
          }
      );
    }
  }
}