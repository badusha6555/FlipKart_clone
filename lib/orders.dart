import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

class orders extends StatefulWidget {
  const orders({super.key});

  @override
  State<orders> createState() => _ordersState();
}

class _ordersState extends State<orders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 16, 63, 234),
          title: const Text(
            'Orders',
            style: TextStyle(color: Colors.white),
          ),
          automaticallyImplyLeading: true,
          foregroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 0),
                      width: 375,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      child: const TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search Your Order Here",
                            border: InputBorder.none,
                            suffixIcon: Icon(Icons.filter_list)),
                      ),
                    ),
                    // Divider(),
                    // Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Row(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Container(
                    //           margin: const EdgeInsets.symmetric(horizontal: 0),
                    //           width: 100,
                    //           height: 60,
                    //           decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(8.0),
                    //             image: DecorationImage(
                    //               image: AssetImage('assets/watch.jpeg'),
                    //               fit: BoxFit.cover,
                    //             ),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
