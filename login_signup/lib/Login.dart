import 'package:flutter/material.dart';
import 'package:login_signup/Signup.dart';
import 'package:login_signup/Dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _UsernameController = TextEditingController();
  final _PasswordController = TextEditingController();

  void Login() {
    final username = _UsernameController.text;
    final password = _PasswordController.text;
    if (username.isNotEmpty && password.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Dashboard(username: username),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both username and password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        // ----- appBar -----------
        // appBar: AppBar(
        //   title: Text('Login',
        //       style: TextStyle(
        //         color: Colors.white,
        //       )),
        //   backgroundColor: Colors.black,
        //   centerTitle: true,
        // ),
        // ----- appBar -----------
        body: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),

                // Username field
                TextField(
                  controller: _UsernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Username'),
                ),
                SizedBox(
                  height: 20,
                ),

                // Password field
                TextField(
                  controller: _PasswordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'Password'),
                  obscureText: true,
                ),

                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: Login,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: Text('Login'),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have a account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Signup()),
                        );
                      },
                      child: Text("Register"),
                    )
                  ],
                )
              ],
            )));
  }
}
