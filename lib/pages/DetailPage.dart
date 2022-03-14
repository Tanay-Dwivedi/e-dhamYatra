import 'package:flutter/material.dart';

import '../place_data.dart';

class DetailPage extends StatelessWidget {
  Place place;
  DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[100],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Center(child: Text("This is Detail page of ${place.title}")),
    );
  }
}
