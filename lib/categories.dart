import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<CategoryItem> categories = [
    CategoryItem('Top Offers', Icons.local_offer),
    CategoryItem('Grocery', Icons.shopping_cart),
    CategoryItem('Mobiles', Icons.smartphone),
    CategoryItem('Fashion', Icons.style),
    CategoryItem('Electronics', Icons.tv),
    CategoryItem('Home', Icons.home),
    CategoryItem('Personal Care', Icons.health_and_safety),
    CategoryItem('Appliances', Icons.kitchen),
    CategoryItem('Toys & Baby', Icons.toys),
    CategoryItem('Furniture', Icons.chair),
    CategoryItem('Flights & Hotels', Icons.flight),
    CategoryItem('Insurance', Icons.verified),
    CategoryItem('Sports', Icons.sports_tennis),
    CategoryItem('Nutrition & more', Icons.food_bank),
    CategoryItem('Bikes & Cars', Icons.directions_bike),
    CategoryItem('Gift Cards', Icons.card_giftcard),
    CategoryItem('Medicines', Icons.medical_services),
    CategoryItem('Home Services', Icons.build),
    CategoryItem('Sell Back', Icons.sell),
    CategoryItem('Books', Icons.book),
    CategoryItem('Movies & Music', Icons.movie),
    CategoryItem('Gaming', Icons.sports_esports),
    CategoryItem('Pet Supplies', Icons.pets),
    CategoryItem('Stationery', Icons.create),
    CategoryItem('Jewelry', Icons.diamond),
    CategoryItem('Watches', Icons.watch),
    CategoryItem('Luggage ', Icons.luggage),
    CategoryItem('Office Supplies', Icons.work),
    CategoryItem('Beauty', Icons.brush),
    CategoryItem('Automotive', Icons.directions_car),
    CategoryItem('Garden', Icons.grass),
    CategoryItem('Tools', Icons.construction),
    CategoryItem('Baby Products', Icons.child_friendly),
    CategoryItem('Music', Icons.music_note),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 14),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                    prefixIcon: Icon(Icons.search),
                    hintText: "All Categories",
                    border: InputBorder.none),
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 17, 46, 235),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 1.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          },
        ),
      ),
    );
  }
}

class CategoryItem {
  final String title;
  final IconData icon;

  CategoryItem(this.title, this.icon);
}

class CategoryCard extends StatelessWidget {
  final CategoryItem category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 6, 61, 243),
              radius: 50,
              child: Icon(
                category.icon,
                size: 30,
                color: const Color.fromARGB(255, 255, 255, 255),
              )),
          const SizedBox(height: 10),
          Text(
            category.title,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
