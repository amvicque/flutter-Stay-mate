import 'package:flutter/material.dart';
import '../models/property.dart';

class PropertyProvider with ChangeNotifier {
  final List<Property> _properties = [
    Property(
      id: '1',
      title: 'Cozy Beachfront Villa',
      location: 'Miami, FL',
      price: 250.0,
      imageUrl: 'https://via.placeholder.com/150',
      description: 'A beautiful villa by the beach with stunning views.',
    ),
    Property(
      id: '2',
      title: 'Mountain Cabin Retreat',
      location: 'Aspen, CO',
      price: 180.0,
      imageUrl: 'https://via.placeholder.com/150',
      description: 'A cozy cabin in the mountains, perfect for a getaway.',
    ),
    Property(
      id: '3',
      title: 'Urban Loft',
      location: 'New York, NY',
      price: 300.0,
      imageUrl: 'https://via.placeholder.com/150',
      description: 'Modern loft in the heart of the city.',
    ),
  ];

  List<Property> get properties => _properties;

  List<Property> searchProperties(String query) {
    if (query.isEmpty) return _properties;
    return _properties
        .where((property) =>
            property.location.toLowerCase().contains(query.toLowerCase()) ||
            property.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
}
