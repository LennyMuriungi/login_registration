import 'package:flutter/material.dart';
import 'package:login_registration/pages/login_page.dart';

class MyRegButton extends StatelessWidget {

  final Function()? onTap;

  const MyRegButton ({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //navigates to LoginPage
      //needs save feature added too
      onTap:
          () async { await Navigator.push(context, MaterialPageRoute(builder: (context){
                return LoginPage();
                }
                ),);
              },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal:50), 
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8)
          ),
        child: const Center( 
          child: Text(
            'Register',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14, 
              ),  
            ),
          ),
      ),
    );
  }
}