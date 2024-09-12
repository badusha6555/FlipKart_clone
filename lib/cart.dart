import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: Colors.black),
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.blue,
          tabs: const [
            Tab(text: 'Flipkart (6)'),
            Tab(text: 'Grocery'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Deliver to: ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'Irfan Habeeb, 673638',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'NADUKANDI HOUSE, Karippur po, Tharayittal, ko...',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 3, 60, 218),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: const Text(
                                    'Change',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Divider(),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://m.media-amazon.com/images/I/71TtYwCVf2L._AC_UL480_FMwebp_QL65_.jpg', // Replace with actual product image URL
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Office Inspirational Quotes Vinyl Wall Stickers Wall Decor for Office Quotes Positive Sayings Peel and Stick Wall Sticker Colorful Motivational Lettering Teamwork Decorations Company Art Room Office',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star_half,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star_border,
                                              color: Colors.green, size: 16),
                                          SizedBox(width: 5),
                                          Text('(5)',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          DropdownButton<String>(
                                            value: 'Qty: 1',
                                            items: <String>[
                                              'Qty: 1',
                                              'Qty: 2',
                                              'Qty: 3'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {},
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                '@499',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '1276',
                                                    style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '61% off',
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        '4 offers applied , 2 offers available',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 12),
                                      ),
                                      const Text(
                                        'Delivery by Thu Mar 9, FREE Delivery',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Divider(thickness: 3),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  'https://m.media-amazon.com/images/I/71TtYwCVf2L._AC_UL480_FMwebp_QL65_.jpg', // Replace with actual product image URL
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Office Inspirational Quotes Vinyl Wall Stickers Wall Decor for Office Quotes Positive Sayings Peel and Stick Wall Sticker Colorful Motivational Lettering Teamwork Decorations Company Art Room Office',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      const Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star_half,
                                              color: Colors.green, size: 16),
                                          Icon(Icons.star_border,
                                              color: Colors.green, size: 16),
                                          SizedBox(width: 5),
                                          Text('(5)',
                                              style: TextStyle(
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          DropdownButton<String>(
                                            value: 'Qty: 1',
                                            items: <String>[
                                              'Qty: 1',
                                              'Qty: 2',
                                              'Qty: 3'
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(value),
                                              );
                                            }).toList(),
                                            onChanged: (String? newValue) {},
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                '@499',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '1276',
                                                    style: TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    '61% off',
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        '4 offers applied , 2 offers available',
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 12),
                                      ),
                                      const Text(
                                        'Delivery by Thu Mar 9, FREE Delivery',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.bookmark_border),
                                  label: const Text('Save for later'),
                                ),
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.delete_outline),
                                  label: const Text('Remove'),
                                ),
                              ],
                            ),
                            const Divider(
                              thickness: 3,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '₹1000',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.yellow[700],
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    child: const Text(
                                      'Place order',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
