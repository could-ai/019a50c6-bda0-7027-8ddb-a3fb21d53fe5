import 'package:flutter/material.dart';
import 'package:couldai_user_app/models/restaurant.dart';
import 'package:couldai_user_app/widgets/restaurant_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Restaurant> _restaurants = [
    Restaurant(
      name: 'The Golden Spoon',
      imageUrl: 'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      cuisine: 'North Indian, Mughlai',
      rating: 4.5,
      deliveryTime: '30-40 min',
      costForTwo: '₹1,200 for two',
    ),
    Restaurant(
      name: 'Pizza Paradise',
      imageUrl: 'https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      cuisine: 'Pizza, Italian, Fast Food',
      rating: 4.2,
      deliveryTime: '25-35 min',
      costForTwo: '₹800 for two',
    ),
    Restaurant(
      name: 'Sushi Central',
      imageUrl: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      cuisine: 'Japanese, Sushi, Asian',
      rating: 4.8,
      deliveryTime: '40-50 min',
      costForTwo: '₹2,000 for two',
    ),
    Restaurant(
      name: 'Burger Barn',
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=999&q=80',
      cuisine: 'Burger, American, Fast Food',
      rating: 4.0,
      deliveryTime: '20-30 min',
      costForTwo: '₹600 for two',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zomato'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _restaurants.length,
        itemBuilder: (context, index) {
          return RestaurantCard(restaurant: _restaurants[index]);
        },
      ),
    );
  }
}
