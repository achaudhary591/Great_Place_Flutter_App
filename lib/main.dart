import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:great_places_app/provider/great_places.dart';
import 'package:great_places_app/screens/add_place_screen.dart';
import 'package:provider/provider.dart';
import 'package:great_places_app/screens/places_list_screen.dart';

void main() {
  runApp(
    const MyHomePage(),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo,
            backgroundColor: Colors.white,
            accentColor: Colors.amber,
            errorColor: Colors.orange,
          ).copyWith(secondary: Colors.indigoAccent),
          useMaterial3: true,
        ),
        home: const PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen()
        },
      ),
    );
  }
}
