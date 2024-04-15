import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Utls/DialougUtls.dart';
import 'RegisterScreenViewModel.dart';
import '../../../Utls/CustomTextField.dart';
import 'package:ecommerce/Ui/Auth/Register/Cubit/RegisterState.dart';
import 'package:ecommerce/Domain/di.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late RegisterScreenViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = RegisterScreenViewModel(
      registerUseCase: injectRegisterUseCase(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterScreenViewModel, RegisterStates>(
      bloc: viewModel,
      listener: (context, state) {
        if (state is RegisterLoadingState) {
          DialogUtls.showLoading(context: context, message: 'Loading');
        } else if (state is RegisterErrorState) {
          DialogUtls.showMessage(context: context, message: state.errorMessage);
        } else if (state is RegisterSuccessState) {
          DialogUtls.hideLoading(context);
        }
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: viewModel.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 91),
                    child: Image.asset(
                      'assets/images/Group 5.png',
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Create Account',
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Full Name',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: viewModel.fullNameController,
                    hintText: 'Enter your full name',
                    obscureText: false,
                    textInputAction: TextInputAction.next,
                    hintTextColor: Colors.black,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Mobile Number',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: viewModel.mobileNumberController,
                    hintText: 'Enter your mobile number',
                    obscureText: false,
                    textInputAction: TextInputAction.next,
                    hintTextColor: Colors.black,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'E-mail Address',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: viewModel.emailController,
                    hintText: 'Enter your email address',
                    obscureText: false,
                    textInputAction: TextInputAction.next,
                    hintTextColor: Colors.black,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Password',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: viewModel.passwordController,
                    hintText: 'Enter your password',
                    obscureText: true,
                    suffixIcon: Icon(Icons.visibility),
                    textInputAction: TextInputAction.done,
                    hintTextColor: Colors.black,
                  ),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.register();
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
