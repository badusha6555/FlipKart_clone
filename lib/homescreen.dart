import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:kart_app/coupons.dart';
import 'package:kart_app/credit.dart';
import 'package:kart_app/grocery.dart';
import 'package:kart_app/groupbuy.dart';
import 'package:kart_app/loan.dart';
import 'package:kart_app/newlaunches.dart';
import 'package:kart_app/plus.dart';
import 'package:kart_app/supercoin.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({
    super.key,
  });

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool _isSwitched = false;
  int _current = 0;

  final List<String> imgList = [
    'assets/cs1.jpg',
    'assets/cs2.png',
    'assets/cs3.jpg',
    'assets/cs4.jpeg',
    'assets/cs5.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 44, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/flplogo.png',
                      height: 20,
                    ),
                    label: const Text(
                      'Flipkart',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 33, 75, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      minimumSize: const Size(180, 0),
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GroceryScreen()));
                    },
                    icon: Image.asset(
                      'assets/grocery.png',
                      height: 20,
                    ),
                    label: const Text(
                      'Grocery',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                      minimumSize: const Size(180, 0),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Brand Mall'),
                      Row(
                        children: [
                          Switch(
                            value: _isSwitched,
                            onChanged: (bool value) {
                              setState(() {
                                _isSwitched = value;
                              });
                            },
                            activeTrackColor:
                                const Color.fromARGB(255, 0, 42, 255),
                            activeColor: const Color.fromARGB(255, 255, 204, 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search for products',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 1),
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  initialPage: 0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: imgList.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: imgList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => _carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == entry.key
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Gap(10),
                    Options("assets/sc1.jpg", "Super Coin",
                        () => navigateToSuperCoin(context)),
                    const Gap(20),
                    Options(
                        "assets/sc2.png", "Coupons", () => toCoupons(context)),
                    const Gap(20),
                    Options('assets/sc3.jpg', 'Plus', () => toPremium(context)),
                    const Gap(20),
                    Options(
                        'assets/sc4.jpeg', 'Credit', () => toCredit(context)),
                    const Gap(20),
                    Options('assets/sc5.jpeg', 'Group Buy',
                        () => toGroupBuy(context)),
                    const Gap(20),
                    Options('assets/sc6.jpeg', "New Launches",
                        () => toNewLaunches(context)),
                    const Gap(20),
                    Options('assets/sc7.png', 'Personal Loan',
                        () => toPersonalLoan(context)),
                    const Gap(20)
                  ],
                ),
              ),
              const Gap(20),
              const Divider(),
              const Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            const Gap(10),
                            Container(
                              width: 150,
                              height: 150,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/download.jpeg',
                                    width: 150,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Laptop Deals',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    '@15999',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Gap(10),
                            Container(
                              width: 150,
                              height: 150,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/cart.jpeg',
                                    width: 150,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Grocery Deals',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    '@499',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Gap(10),
                            Container(
                              width: 150,
                              height: 150,
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/watch.jpeg',
                                    width: 150,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Boat Watches',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    '@1999',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(10),
              const Divider(
                thickness: 1,
              ),
              const Gap(10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recently Viewed Stories',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const Gap(10),
                    Column(
                      children: [
                        Container(
                          width: 120,
                          height: 157,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/mobile.jpeg',
                                width: 150,
                                height: 80,
                                fit: BoxFit.fitHeight,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Mobiles',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                '@11999',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Gap(10),
                    Container(
                      width: 120,
                      height: 157,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/stationry.jpeg',
                            width: 150,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 1),
                          const Text(
                            'Stationary',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 1),
                          const Text(
                            '@99',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 120,
                      height: 157,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/ceramic.jpeg',
                            width: 150,
                            height: 80,
                            fit: BoxFit.contain,
                          ),
                          const SizedBox(height: 1),
                          const Text(
                            'Ceramic Cookwares',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 1),
                          const Text(
                            '@299',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 120,
                      height: 157,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/headphone.jpeg',
                            width: 150,
                            height: 80,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Headphones',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            '@1999',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column Options(String image, String text, Function() navigation) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            navigation();
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(text),
      ],
    );
  }
}

void navigateToSuperCoin(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const Supercoin(),
  ));
}

void toCoupons(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const Coupons(),
  ));
}

void toPremium(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const plus(),
  ));
}

void toCredit(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const credit(),
  ));
}

void toGroupBuy(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const groupbuy(),
  ));
}

void toNewLaunches(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const newLaunches(),
  ));
}

void toPersonalLoan(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const loan(),
  ));
}

// ignore: camel_case_types
class _carouselController {
  static animateToPage(int key) {}
}
