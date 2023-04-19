import 'package:flutter/material.dart';
import 'package:login_registration/components/reg_button.dart'; 
import 'package:login_registration/components/text_field.dart';
import 'package:login_registration/pages/login_page.dart';
import 'dart:ui';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

    //text editing controllers
  final usernameController = TextEditingController();
  final usernameController2 = TextEditingController();
  final usernameController3 = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();

  //method to register user
  void registerUser(){}

  @override
  Widget build(BuildContext context) {
    return  Scrollbar(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/woodsy.png'),
              fit: BoxFit.cover,
             )
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              child: SingleChildScrollView(
          child: SafeArea(
          child: Center( 
          child: Column(
            children: [
            const SizedBox(height: 25),
             //logo
            const Icon(
              Icons.lock,
              size: 100,
              ),
    
            const SizedBox(height: 50),
    
            //welcome message
            const Text(
              'Hello, please enter your information in the relevant fields!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
    
            const SizedBox(height: 25),
    
            //first name
            MyTextField(
              color: Colors.grey.shade400,
              controller: usernameController,
              hintText: 'First Name',
              obscureText: false,
            ),
            
            const SizedBox(height: 5),
    
            //second name
            MyTextField(
              color: Colors.grey.shade400,
              controller: usernameController2,
              hintText: 'Last Name',
              obscureText: false,
            ),
            
            const SizedBox(height: 5),
    
            //email address
            MyTextField(
              color: Colors.grey.shade400,
              controller: usernameController3,
              hintText: 'Email Address',
              obscureText: false,
            ),
            
            const SizedBox(height: 5),
    
            //password textfield
            MyTextField(
              color: Colors.grey.shade400,
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
              
            ),
    
            const SizedBox(height: 5),
    
            //Confirm Password
            MyTextField(
              color: Colors.grey.shade400,
              controller: passwordController2,
              hintText: ' Confirm Password',
              obscureText: true,
            ),
    
            const SizedBox(height: 25),

            //Registration button
            MyRegButton(
              onTap: registerUser,
            ),
    
            const SizedBox(height: 5),
    
            Divider(
              thickness: 1.0,
              color: Colors.grey.shade600,
            ),
            const SizedBox(height: 10),
            //back to sign in page
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: 
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('already a member? Back to ',
                      style: TextStyle(color: Colors.grey.shade600),
                      ),
                      GestureDetector(
                        onTap: 
                        () async { await Navigator.push(context, MaterialPageRoute(builder: (context){
                              return LoginPage();
                              }
                              ),);
                            },
                        child: const Text(
                          'sign in page',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ),
                    ],
                  ),
                ),
    
                const SizedBox(height: 5),
            ]
          )
        )
      )
        )
      )
      )
      )
      ),
    );
  }
}