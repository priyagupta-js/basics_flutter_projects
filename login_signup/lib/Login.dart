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
    return Column(
      children: [
        Container(
          child: Text('Login Page'),
        )
      ],
    );
  }
}
