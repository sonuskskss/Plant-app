import 'package:flutter/cupertino.dart';

class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String categary;
  final String plantName;
  final String imageUrl;
  final String description;
  bool isFavorated;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.categary,
      required this.plantName,
      required this.imageUrl,
      required this.description,
      required this.isFavorated,
        required this.isSelected,
       // required  this.decription

      });



  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 22,
        categary: 'Indoor',
        plantName: 'Sanseviera',
        size: 'Small',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageUrl: 'lib/assets/plant-one.png',
        isFavorated: false,
        description: "This plant is one of the best plant. It grows in most of the regions in the world and can survive'even the harshest weather condition.",
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        categary: 'Outdoor',
        plantName: 'Philodendron',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageUrl: 'lib/assets/plant-two.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        categary: 'Indoor',
        plantName: 'Beach Daisy',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageUrl: 'lib/assets/plant-three.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        categary: 'Outdoor',
        plantName: 'Big Bluestem',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageUrl: 'lib/assets/plant-one.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        categary: 'Recommended',
        plantName: 'Big Bluestem',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageUrl: 'lib/assets/plant-four.png',
        isFavorated: true,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        categary: 'Outdoor',
        plantName: 'Meadow Sage',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageUrl: 'lib/assets/plant-five.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        categary: 'Garden',
        plantName: 'Plumbago',
        size: 'Small',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageUrl: 'lib/assets/plant-six.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        categary: 'Garden',
        plantName: 'Tritonia',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageUrl: 'lib/assets/plant-seven.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        categary: 'Recommended',
        plantName: 'Tritonia',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageUrl: 'lib/assets/plant-eight.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),









    Plant(
        plantId: 9,
        price: 13,
        categary: 'Indoor',
        plantName: 'Pialori',
        size: 'Medium',
        rating: 4.7,
        humidity: 49,
        temperature: '23 - 25',
        imageUrl: 'lib/assets/p1-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),

    Plant(
        plantId: 10,
        price: 16,
        categary: 'Outdoor',
        plantName: 'Tirurari',
        size: 'Small',
        rating: 4,
        humidity: 43,
        temperature: '24 - 32',
        imageUrl: 'lib/assets/p2-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),

    Plant(
        plantId: 11,
        price: 22,
        categary: 'Garden',
        plantName: 'Savana',
        size: 'Medium',
        rating: 2,
        humidity: 37,
        temperature: '29 - 43',
        imageUrl: 'lib/assets/p3-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 12,
        price: 31,
        categary: 'Recommended',
        plantName: 'Karcbi',
        size: 'Small',
        rating: 3,
        humidity: 44,
        temperature: '21 - 44',
        imageUrl: 'lib/assets/p4-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 13,
        price: 26,
        categary: 'Outdoore',
        plantName: 'Wanmaya',
        size: 'Medium',
        rating: 4.7,
        humidity: 23,
        temperature: '24 - 33',
        imageUrl: 'lib/assets/p5-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 14,
        price: 19,
        categary: 'Indoore',
        plantName: 'Youdusha',
        size: 'Large',
        rating: 5,
        humidity: 33,
        temperature: '22 - 38',
        imageUrl: 'lib/assets/p6-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 15,
        price: 50,
        categary: 'Garden',
        plantName: 'Tutilip',
        size: 'Medium',
        rating: 4,
        humidity: 19,
        temperature: '20 - 25',
        imageUrl: 'lib/assets/p7-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 16,
        price: 46,
        categary: 'Recommended',
        plantName: 'Tritonia',
        size: 'Small',
        rating: 3,
        humidity: 42,
        temperature: '21 - 25',
        imageUrl: 'lib/assets/p8-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 17,
        price: 10,
        categary: 'Outdoor',
        plantName: 'Meghati',
        size: 'Medium',
        rating: 3.3,
        humidity:44,
        temperature: '21 - 29',
        imageUrl: 'lib/assets/p9-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),
    Plant(
        plantId: 18,
        price: 46,
        categary: 'Indoore',
        plantName: 'Rumpali',
        size: 'Small',
        rating: 4,
        humidity: 46,
        temperature: '20 - 25',
        imageUrl: 'lib/assets/p10-removebg-preview.png',
        isFavorated: false,
        description:
        'This plant is one of the best plant. It grows in most of the regions in the world and can survive'
            'even the harshest weather condition.',
        isSelected: false),













  ];





  static List<Plant> getFavoritedPlants(){
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element)=>element.isFavorated == true).toList();
  }


  static List<Plant> addedToCartPlants(){
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants.where((element)=>element.isSelected == true).toList();
  }


}
