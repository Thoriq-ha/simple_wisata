import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_wisata/Screen/detail_screen.dart';
import 'package:uts_wisata/models/wisata_model.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata'),
      ),
      body: ListView.builder(
          itemCount: dataWisata.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen(wisata: dataWisata[index],)));
                },
                child: Card(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Container(
                          height: 120,
                          child: Image.asset(
                            'assets/images/${dataWisata[index].images}',
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${dataWisata[index].name}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Htm : ${dataWisata[index].htm}"),
                        ],
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
