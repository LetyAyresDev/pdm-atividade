import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            
            // leading: Image.network(
            //   "https://acdn-us.mitiendanube.com/stores/001/248/765/products/garrafa-pet-500-ml-2-0736045704aa58038c17725132519732-1024-1024.webp",
            //   width: 80,
            //   height: 80,
            //   fit: BoxFit.cover,
            // ),
            title: Text('Nescau'),
            subtitle: Text('Achocolatado '),

            // titleTextStyle: TextStyle(
            //   color: const Color.fromARGB(179, 0, 0, 0),
            //   fontSize: 25.0,
            //   fontFamily: 'Arial'
            // ),
          ),
        ],
      ),
    );
  }
}
