import 'package:flutter/material.dart';
import 'package:login_registration/pages/fiction_page.dart';

class MyFiction extends StatelessWidget {

  final Function()? onTap;

  const MyFiction({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async { await Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Fiction();
                }
                ),);
              },
      child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.symmetric(horizontal:50), 
          decoration: BoxDecoration(
            color: const Color.fromARGB(245, 90, 249, 50),
            borderRadius: BorderRadius.circular(8)
            ),
          child: const Center( 
            child: Text(
              'Fiction',
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