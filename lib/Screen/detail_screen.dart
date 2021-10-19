import 'package:flutter/material.dart';
import 'package:uts_wisata/models/wisata_model.dart';

class DetailScreen extends StatelessWidget {
  final Wisata wisata;
  const DetailScreen({Key? key, required this.wisata}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${wisata.name}"),),
      body: Column(
        children: [
          Image.asset('assets/images/${wisata.images}'),
          SizedBox(height: 16,),
          Text(
            '${wisata.name}',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
          ),
          Text('Harga Tiket Masuk: ${wisata.htm} idr', style: TextStyle(fontWeight: FontWeight.w300),),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('${wisata.deskripsi}', textAlign: TextAlign.justify,),
          ),
        ],
      ),
    );
  }
}
