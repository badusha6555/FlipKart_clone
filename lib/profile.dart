import 'package:enefty_icons/enefty_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:kart_app/orders.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hey! User',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Gap(10),
                  Text(
                    'Flipkart Plus',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 3, 49, 255)),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )
                ],
              ),
              const Divider(
                thickness: 3,
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const orders()));
                            },
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    EneftyIcons.a_3d_cube_bold,
                                    color: Color.fromARGB(255, 6, 69, 242),
                                  ),
                                  Text(
                                    'Orders',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 3, 2, 2)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(26),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    EneftyIcons.heart_bold,
                                    color: Color.fromARGB(255, 6, 69, 242),
                                  ),
                                  Text(
                                    'WishList',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 3, 2, 2)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    EneftyIcons.gift_bold,
                                    color: Color.fromARGB(255, 6, 69, 242),
                                  ),
                                  Text(
                                    'Coupons',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 3, 2, 2)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(26),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.live_help_outlined,
                                    color: Color.fromARGB(255, 6, 69, 242),
                                  ),
                                  Text(
                                    'HelpCare',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 3, 2, 2)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 3,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Credit Options',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(15),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.calendar_month_outlined,
                              color: Color.fromARGB(255, 6, 69, 242), size: 30),
                        ),
                        const Gap(10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flipkart Pay Later',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  'Complete application & get ₹500* gift card',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 16),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.credit_card,
                              color: Color.fromARGB(255, 6, 69, 242), size: 30),
                        ),
                        const Gap(10),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flipkart Axis Bank Credit Card',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  'Get Wonderful Offers',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 16),
                      ],
                    ),
                    const Divider(
                      thickness: 3,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'assets/demo.jpeg',
                              fit: BoxFit.cover,
                              height: 120,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 4,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Level Up and win rewards worth Rs.10000',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Only 1 more tasks to complete this level',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16)
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 3,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Account Settings',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Gap(20),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.star,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              const Gap(10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Flipkart Plus',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          const Gap(15),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(EneftyIcons.profile_bold,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              const Gap(10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          const Gap(15),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                    EneftyIcons.empty_wallet_add_bold,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              const Gap(10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Saved Credit/Gift cards',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          const Gap(15),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.location_on,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              const Gap(10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Saved Address',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          const Gap(15),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.language,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              const Gap(10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Languages',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          const Gap(15),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.notifications_off,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              const Gap(10),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Notification Settings',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          const Gap(10),
                          const Divider(
                            thickness: 3,
                          ),
                          const Gap(10),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'My Activity',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Gap(20),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Icon(Icons.rate_review,
                                          color:
                                              Color.fromARGB(255, 16, 63, 234),
                                          size: 30),
                                    ),
                                    const Gap(10),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Reviews',
                                            style: TextStyle(
                                              fontSize: 16,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black, size: 16),
                                  ],
                                ),
                                const Gap(15),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Icon(
                                          EneftyIcons.message_question_bold,
                                          color:
                                              Color.fromARGB(255, 16, 63, 234),
                                          size: 30),
                                    ),
                                    const Gap(10),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Questions and Answers',
                                            style: TextStyle(
                                              fontSize: 16,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black, size: 16),
                                  ],
                                ),
                                const Gap(10),
                                const Divider(
                                  thickness: 3,
                                ),
                                const Gap(10),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Earn with Flipkart',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Gap(20),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                                Icons.star_border_rounded,
                                                color: Color.fromARGB(
                                                    255, 16, 63, 234),
                                                size: 30),
                                          ),
                                          const Gap(10),
                                          const Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Flipkart Creator Studio',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Icon(Icons.arrow_forward_ios,
                                              color: Colors.black, size: 16),
                                        ],
                                      ),
                                      const Gap(15),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                                EneftyIcons.shop_bold,
                                                color: Color.fromARGB(
                                                    255, 16, 63, 234),
                                                size: 30),
                                          ),
                                          const Gap(10),
                                          const Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sell on Flipkart',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Icon(Icons.arrow_forward_ios,
                                              color: Colors.black, size: 16),
                                        ],
                                      ),
                                      const Gap(10),
                                      const Divider(
                                        thickness: 3,
                                      ),
                                      const Gap(10),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Feedback & Information',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Gap(20),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: const Icon(
                                                      Icons.policy,
                                                      color: Color.fromARGB(
                                                          255, 16, 63, 234),
                                                      size: 30),
                                                ),
                                                const Gap(10),
                                                const Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Terms,Policies & Licenses',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          // fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.black,
                                                    size: 16),
                                              ],
                                            ),
                                            const Gap(15),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: const Icon(
                                                      EneftyIcons
                                                          .message_question_outline,
                                                      color: Color.fromARGB(
                                                          255, 16, 63, 234),
                                                      size: 30),
                                                ),
                                                const Gap(10),
                                                const Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Browse FAQs',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          // fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.black,
                                                    size: 16),
                                              ],
                                            ),
                                            const Divider(
                                              thickness: 3,
                                            ),
                                            const Gap(25),
                                            Container(
                                              height: 50,
                                              width: 400,
                                              decoration: BoxDecoration(
                                                color: Colors.yellow[700],
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    'Log Out',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 3, 2, 2)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
