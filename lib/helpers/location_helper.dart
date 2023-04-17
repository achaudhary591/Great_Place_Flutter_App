import 'helpers.dart';
import 'package:http/http.dart' as http;

const GOOGLE_API_KEY = api_key;

class LocationHelper{

  static String generateLocationPreviewImage(
      {required double? latitude, required double? longitude}){
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=16&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }

  static Future<String> getPlacesAddress(double lat, double lng) async{
    final url = Uri.parse('https://maps.googleapis.com/maps/api/geocode/json?latlng=40.714224,-73.961452&key=$GOOGLE_API_KEY');
  }
}