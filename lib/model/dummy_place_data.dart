import 'dart:io';

import 'models.dart';

List<Place> dummyPlaces = [
  Place(
    id: '1',
    title: 'Eiffel Tower',
    location: PlaceLocation(latitude: 48.8584, longitude: 2.2945, address: 'Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France'),
    image: File('path/to/image/eiffel_tower.jpg'),
  ),
  Place(
    id: '2',
    title: 'Statue of Liberty',
    location: PlaceLocation(latitude: 40.6892, longitude: -74.0445, address: 'New York, NY 10004, United States'),
    image: File('path/to/image/statue_of_liberty.jpg'),
  ),
  Place(
    id: '3',
    title: 'Taj Mahal',
    location: PlaceLocation(latitude: 27.1750, longitude: 78.0422, address: 'Dharmapuri, Forest Colony, Tajganj, Agra, Uttar Pradesh 282001, India'),
    image: File('path/to/image/taj_mahal.jpg'),
  ),
  Place(
    id: '4',
    title: 'Great Wall of China',
    location: PlaceLocation(latitude: 40.4319, longitude: 116.5704, address: 'Mutianyu, Huairou, China'),
    image: File('path/to/image/great_wall_of_china.jpg'),
  ),
  Place(
    id: '5',
    title: 'Machu Picchu',
    location: PlaceLocation(latitude: -13.1631, longitude: -72.5450, address: '08680, Peru'),
    image: File('path/to/image/machu_picchu.jpg'),
  ),
  Place(
    id: '6',
    title: 'Sydney Opera House',
    location: PlaceLocation(latitude: -33.8568, longitude: 151.2153, address: 'Bennelong Point, Sydney NSW 2000, Australia'),
    image: File('path/to/image/sydney_opera_house.jpg'),
  ),
  Place(
    id: '7',
    title: 'Sagrada Familia',
    location: PlaceLocation(latitude: 41.4040, longitude: 2.1744, address: 'Carrer de Mallorca, 401, 08013 Barcelona, Spain'),
    image: File('path/to/image/sagrada_familia.jpg'),
  ),
  Place(
    id: '8',
    title: 'Petra',
    location: PlaceLocation(latitude: 30.3285, longitude: 35.4444, address: 'Ma\'an Governorate, Jordan'),
    image: File('path/to/image/petra.jpg'),
  ),
  Place(
    id: '9',
    title: 'Niagara Falls',
    location: PlaceLocation(latitude: 43.0828, longitude: -79.0742, address: 'Niagara Falls, NY 14303, United States'),
    image: File('path/to/image/niagara_falls.jpg'),
  ),
  Place(
    id: '10',
    title: 'Uluru',
    location: PlaceLocation(latitude: -25.3444, longitude: 131.0369, address: 'Petermann NT 0872, Australia'),
    image: File('path/to/image/uluru.jpg'),
  ),
];