import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/widgets/recent_orders.dart';
import '../widgets/nearby_restaurants.dart';
import 'resturants_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        leading: Icon(
          Icons.account_circle,
          size: 35,
        ),
        title: Text("Food Delivery App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RestaurantScreen(restaurant: restaurant),
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide:
                        BorderSide(width: 0.8, color: Colors.deepOrangeAccent),
                  ),
                  hintText: "Search Food Or Restaurant",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  suffixIcon: Icon(
                    Icons.clear,
                    size: 30,
                  ),
                ),
              ),
            ),
            RecentOrders(),
            NearbyRestaurants(),
          ],
        ),
      ),
    );
  }
}
