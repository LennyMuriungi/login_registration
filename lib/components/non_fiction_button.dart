import 'package:flutter/material.dart';
import 'package:login_registration/pages/non_fiction_page.dart';

class MyNonFiction extends StatelessWidget {

  final Function()? onTap;

  const MyNonFiction({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async { await Navigator.push(context, MaterialPageRoute(builder: (context){
                return const NonFiction();
                }
                ),);
              },
      child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.symmetric(horizontal:50), 
          decoration: BoxDecoration(
            color: const Color.fromARGB(245, 99, 59, 9),
            borderRadius: BorderRadius.circular(8)
            ),
          child: const Center( 
            child: Text(
              'Non-Fiction',
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