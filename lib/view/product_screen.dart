import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset("assets/images/apple.png", width: MediaQuery.of(context).size.width, height: 200, fit: BoxFit.fill,),
            const Row(
              children: [
                Text("Natural Red Apple", 
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold,
                  
                  )
                ),
              ],
              
            ),
            const Row(
              children: [
                Text("8Kg, price", style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
                  )),
              ],
            ),
        
          ]
        ),
      ),
    );
  }
}