import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Screen 2 - Padding Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
           MainAxisAlignment.center,
           children: <Widget>[
            Text(
              'Padding Demo',
              style: 
              Theme.of(context).textTheme.headlineMedium,
            ),
          Padding (
              padding: const EdgeInsets.all(10), 
                child: Container (
                    foregroundDecoration: 
                    BoxDecoration(    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 20.0,
                                    ),
                                  ]),
              decoration: BoxDecoration( color: Colors.red,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const[
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                ),
              ]),
              height: 20,
            )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 1, 40, 0),
          child: Container(
            foregroundDecoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: 
              BorderRadius.circular(100),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                )
              ]),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius : BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20.0
                  )
                ]),
                height: 20,
             )),
             Padding(padding: const EdgeInsets.only(left: 50),
             child: Container(
              foregroundDecoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: 
                BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20.0,
                  ),
                ]),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ]),
                  height: 20,
             )
             ),
            ],  
         ),
    )
    );
  }
}