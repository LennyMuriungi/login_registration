import 'package:flutter/material.dart';
import 'package:login_registration/components/sign_in_button.dart';
import 'package:login_registration/components/text_field.dart';
import 'package:login_registration/pages/registration_page.dart';
import 'dart:ui';


class LoginPage extends StatelessWidget {
  LoginPage ({super.key,});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //method to sign user in
  void signUserIn(){}
  
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Scaffold(
        appBar: AppBar(
        title: const Text("Login Page"),
      ), 
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
              const SizedBox(height: 10),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
                ),
        
              const SizedBox(height: 50),
        
              //welcome message
              const Text(
                'Welcome back user!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
        
              const SizedBox(height: 10),
        
              //username textfield
              MyTextField(
                color: Colors.grey.shade400,
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              
              const SizedBox(height: 10),
        
              //password textfield
              MyTextField(
                color: Colors.grey.shade400,
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
        
              const SizedBox(height: 10),
        
              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'forgot password?',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 25),
        
              //signin button
              MyButton(
                onTap: signUserIn,
              ),
        
              const SizedBox(height: 10),
              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [ 
                    Expanded(
                      child:
                      Divider(
                        thickness: 1.0,
                        color: Colors.grey.shade600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: Colors.black),
                      ),   
                  ),
                  Expanded(
                      child:
                      Divider(
                        thickness: 1.0,
                        color: Colors.grey.shade600,
                      )
                    )
                  ],
                ),
              ),
        
              const SizedBox(height: 20),
              
              //not a member? register now
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'not a member? ',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const SizedBox(height: 5),
                    GestureDetector(
                      onTap: () async { await Navigator.push(context, MaterialPageRoute(builder: (context){
                        return RegistrationPage();}
                                ),
                                );
                                },
                      child: const Text(
                        'Register here',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              
          ],)))),
        )
          ),
        )
      ),
    );
  }
}
