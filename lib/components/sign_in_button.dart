import 'package:flutter/material.dart';
import 'package:login_registration/pages/home_page.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;

  const MyButton ({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async { await Navigator.push(context, MaterialPageRoute(builder: (context){
                return const HomePage();
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
            'Sign in',
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