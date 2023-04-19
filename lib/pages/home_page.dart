import 'package:flutter/material.dart';
import 'package:login_registration/components/fiction_button.dart';
import 'package:login_registration/components/non_fiction_button.dart';
import 'dart:ui';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void goToFictionPage() {}
  void goToNonFictionPage() {}
  void exitPage(){}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to your Hoard"),
      ),
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/3876089.png'),
                fit: BoxFit.cover,
                )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: SingleChildScrollView(
                  child: SafeArea(
                    child: Center(
                    child: Column(
                      children:[
                        const SizedBox(height: 10),
                          //logo
                          const Icon(
                            Icons.shelves,
                            size: 100,
                            color: Color.fromARGB(255, 185, 180, 170),
                            ),
          
                        const SizedBox(height: 25),  
          
                        //Home Page Prompt Text                    
                        const Text(
                          'Welcome to the Hoard! Pick your branch for today',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
          
                        const SizedBox(height: 25),
          
                        //Fiction Button
                        MyFiction(
                          onTap: goToFictionPage,
                        ),
          
                        const SizedBox(height: 5),
          
                        //Non-Fiction Button
                        MyNonFiction(
                          onTap: goToNonFictionPage,
                        ),

                        const SizedBox(height: 10),

                            ],
                          ),
                        ),
                    ), 
                  ),
                ),
              )
            ),
          )
        );
  }
}