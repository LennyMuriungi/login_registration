import 'package:flutter/material.dart';
import 'dart:ui';

class NonFiction extends StatelessWidget {
  const NonFiction({super.key});

  void goHome(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Non-Fiction"),
      ),
      backgroundColor: Colors.grey,
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
                        children: const[
                          SizedBox(height: 10),
                            //logo
                            Icon(
                              Icons.shelves,
                              size: 100,
                              color: Color.fromARGB(255, 185, 180, 170),
                              ),

                          SizedBox(height: 10),
                          
                      ]
                    )
                  )
                )
              )
            )
          )
        )
      )
    );
  }
}