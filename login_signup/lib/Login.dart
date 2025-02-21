// import 'package:flutter/material.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         Container(
//           color: Colors.amberAccent,
//           padding: EdgeInsets.all(10),
//           margin: EdgeInsets.all(10),
//           child: Text(
//             'Login',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 2,
//             ),
//           ),
//         ),
//         Container(
//           child: Text('username'),
//         ),
//         Container(
//           child: Text('Password'),
//         ),
//       ],
//     ));
//   }
// }

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      onPressed: () {},
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20),
                      ),
                    )),
              ],
            )));
  }
}
