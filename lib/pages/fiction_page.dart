import 'package:flutter/material.dart';
import 'dart:ui';

class Fiction extends StatelessWidget {
  const Fiction({super.key});

  void goHome(){}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fiction"),
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
                    children: [
                      const SizedBox(height: 10),
                        //logo
                      const Icon(
                        Icons.shelves,
                        size: 100,
                        color: Color.fromARGB(255, 185, 180, 170),
                        ),
                      
                      const SizedBox(height: 10),

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: getBody(),
                       ),
                      ],
                    ),
                  ),
                )
              )
            )
          )
        )
      )
    );
  }
}

Widget getBody() {
  return ListView.builder(itemBuilder: (context,index){
    return ;
  });  
}

Widget getCard(){
  return Card(
    child: ListTile(
      title: Row(
        children: <Widget>[
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 248, 249, 249)
          ),
        )
      ],)
    ),
  );
}