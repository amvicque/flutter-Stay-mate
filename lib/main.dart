import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/property_provider.dart';
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/property_detail_screen.dart';
import 'screens/booking_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const AirbnbCloneApp());
}

class AirbnbCloneApp extends StatelessWidget {
  const AirbnbCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PropertyProvider(),
      child: MaterialApp(
        title: 'Airbnb Clone',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/search': (context) => const SearchScreen(),
          '/property': (context) => const PropertyDetailScreen(),
          '/booking': (context) => const BookingScreen(),
          '/profile': (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
