import 'package:flutter/material.dart';
import 'package:project_01/shared/components/components.dart';

class LoginScreen extends StatelessWidget {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  validator() {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.menu), onPressed: () {
          var value;
          value;
        },
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 0.0),
            child: IconButton(
              icon: Icon(Icons.search), onPressed: () {
              var value;
              value;
            },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 0),
            child: IconButton(
              icon: Icon(Icons.more_vert), onPressed: () {
              var value;
              value;
            },
            ),
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (String ? value) {
                      if (value == null || value
                          .trim()
                          .length == 0) {
                        return 'Enter a valid email or a username';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                          Icons.person
                      ),
                      labelText: 'Username',
                    ),
                  ),
                  SizedBox(),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                    validator: (String? value) {
                      if (value == null || value
                          .trim()
                          .length == 0) {
                        return 'Enter a valid password';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                          Icons.remove_red_eye
                      ),
                      prefixIcon: Icon(
                          Icons.lock
                      ),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      validator();
                    },
                    child: Text('Login'),
                  ),
                  // defaultButton(
                  //   background: Colors.indigo,
                  //   text: 'LOGIN',
                  //   function: (){
                  //     validator();
                  //   },
                  // ),
                  SizedBox(
                    height: 15.0,
                  ),
                  defaultButton(
                    isUpperCase: true,
                    background: Colors.indigo,
                    text: 'ReGISter',
                    function: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dont\'t have an account?',
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                          style: TextStyle(
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                    ],
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
