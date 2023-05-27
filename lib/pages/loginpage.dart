import 'package:catalog/pages/homepage.dart';
import 'package:catalog/utilities/routes/routes_name.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();

  movetoHomeScrn(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(
        Duration(seconds: 2),
      );

      await Navigator.pushNamed(context, RoutesName.home);
      // await Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => MyHomePage(),
      //   ),
      // );
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: Form(
            key: _formkey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'regular',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'User Name',
                            hintText: 'Enter User Name'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'User name should not be empty';
                          } else {
                            return null;
                          }
                        },
                      ),
                      TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'User Password',
                              hintText: 'Enter User Password'),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password should not be empty';
                            } else {
                              return null;
                            }
                          }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .15,
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 10),
                        color: Colors.amber,
                        child: InkWell(
                          onTap: () => movetoHomeScrn(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 2),
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * .06,
                            width: changeButton
                                ? 50
                                : MediaQuery.of(context).size.width,
                            child: changeButton
                                ? Icon(Icons.done)
                                : Text(
                                    'Login',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'regular',
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
