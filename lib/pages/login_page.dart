import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_textfield.dart';
import 'package:login_ui/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

/////sign in user
  // Void SignUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              //logo//
              const Icon(
                Icons.home,
                size: 100,
              ),

              const SizedBox(
                height: 50,
              ),
              ////welcome back, you've been missed//
              Text(
                'welcome back you have been missed',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              ///username textfeild

              const SizedBox(
                height: 25,
              ),

              MyTextField(
                controller: usernameController,
                hintText: 'User Name',
                obscureText: false,
              ),
              const SizedBox(
                height: 25,
              ),

              /////password textfeild
              MyTextField(
                controller: passwordController,
                hintText: 'Enter Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),

              ///forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              ///sign in button
              MyButton(
                  // onTap: SignUserIn,
                  ),
              const SizedBox(
                height: 25,
              ),

              ///or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "or continue with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
             const SizedBox(
                height: 25,
              ),
              ///google +apple sign in buttons
          Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SquareTile(ImagePath:'lib/images/google.png' ),

                SquareTile(ImagePath:'lib/images/apple2.png' ),
                 ],
            ),
     
              ///not a member?register now
            ],
          ),
        ),
      ),
    );
  }
}
