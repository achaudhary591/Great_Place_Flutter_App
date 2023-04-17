import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/providers.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Your Places',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigoAccent,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
            icon: const Icon(Icons.add_rounded),
          ),
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false).fetchAndSetPlaces(),
        builder: (ctx, snapshot) => snapshot.connectionState == ConnectionState.waiting ? Center(child: loadingWidget(80)) : Consumer<GreatPlaces>(
          child:
              const Center(child: Text('Got no places yet, start adding some')),
          builder: (ctx, greatPlaces, ch) => greatPlaces.items.isEmpty
              ? ch!
              : ListView.builder(
                  itemCount: greatPlaces.items.length,
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: FileImage(greatPlaces.items[i].image!),
                    ),
                    title: Text(greatPlaces.items[i].title),
                    onTap: (){},
                  ),
                ),
        ),
      ),
    );
  }
}
