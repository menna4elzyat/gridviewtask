import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid View Example',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List imageList = [
   // Image.asset('images/photo_2024-01-25_19-35-27.jpg'),
  {'image':'image/download.webp',"Text":"250"},

    {'image':'image/download (1).webp',"Text":"125"},

    {'image':'image/download (2).webp',"Text":"100"},
    {'image':'image/download (3).webp',"Text":"80"},
    {'image':'image/download (4).webp',"Text":"300"},
    {'image':'image/download (5).webp',"Text":"200"},
    {'image':'image/download (5).webp',"Text":"120"},
    {'image':'image/download (8).webp',"Text":"200"},
    {'image':'image/download (2).webp',"Text":"300"},
    {'image':'image/download (3).webp',"Text":"300"},
    {'image':'image/download.webp',"Text":"250"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('products makeup '),
      ),
      body:  GridView.builder(
        itemCount: imageList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of grid columns
            crossAxisSpacing: 20.0, // Spacing between columns
            mainAxisSpacing: 50.0, // Spacing between rows
          ),
          itemBuilder: (BuildContext context, int index) {
            return
               Column(
                  children: [
                        Container(
                          height:150,
                          width: 150,
                          child: Image.asset(

                            imageList[index]['image'],

                            fit: BoxFit.cover,
                          ),
                        ),
                    Text(
                    imageList[index]["Text"],
                    ),
                  ],
            );
          },
        ),
     
    );
  }
}