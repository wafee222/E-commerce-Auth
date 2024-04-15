import 'package:flutter/material.dart';
import '../../Register/Cubit/RegisterScreen.dart';
import '../../../Utls/CustomTextField.dart'; // Import the CreateAccountScreen

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
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
                  'Welcome To Route',
                  style: Theme.of(context).textTheme.titleLarge,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 30),
                Text(
                  'User Name',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10),
                CustomTextField(
                  controller: _usernameController,
                  hintText: 'Enter your name',
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
                  controller: _passwordController,
                  hintText: 'Enter your password',
                  obscureText: true,
                  suffixIcon: Icon(Icons.visibility),
                  textInputAction: TextInputAction.done,
                  hintTextColor: Colors.black,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Handle forgot password
                    },
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Handle login
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Log In',
                      style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 20.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterScreen()),
                        );
                      },
                      child: Text(
                        'Create Account',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
