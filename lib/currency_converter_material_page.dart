import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    int result = 0;
    final border = OutlineInputBorder(
        // Color(0xAARRGGBB)
      borderSide: const BorderSide(
        color: Colors.black,
        width: 3.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 121, 162),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 38, 121, 162),
        elevation: 0,
        title: const Text('Currency Converter',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 35,
                fontWeight:FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            // Padding
            // container
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: '  Please Enter The Amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                // keyboardType: const TextInputType.numberWithOptions(
                // decimal: true,
                // ),
                keyboardType: TextInputType.number,
              ),
            ),
            // button
            // raised
            // apper like a text
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('button clicked');
                  }
                }, 
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                child: const Text('Convert'),
              ),
            ),
          ]
        ),
      ),
    );
  }
}