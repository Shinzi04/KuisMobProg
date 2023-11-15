import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScrollAbleScreen(),
    );
  }
}

class ScrollAbleScreen extends StatelessWidget {
  const ScrollAbleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.red,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            height: 130,
            margin: const EdgeInsets.only(right: 20, left: 20, top: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://brandlogos.net/wp-content/uploads/2012/10/godrej-logo-vector.png',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                    ),
                    const Text("Godrej"),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.person),
                        Text(
                          "5.441 Pengikut",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 10),
                          height: 30,
                          width: 180,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                          ),
                          child: const Center(
                            child: Text(
                              "Mengikuti",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                        const Icon(Icons.share)
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(margin: EdgeInsets.only(top: 25),),
          CarouselSlider(
            
            options: CarouselOptions(height: 100.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(10)),
                      );
                },
              );
            }).toList(),
          ),
          Container(margin: EdgeInsets.only(top: 10,left: 5),child: Text("Belanja berdasarkan kategori", style: TextStyle(fontSize: 20),),),

          
        ],
      ),
    );
  }
}
