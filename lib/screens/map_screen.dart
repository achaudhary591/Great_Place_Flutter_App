import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:great_places_app/model/models.dart';

class MapScreen extends StatefulWidget {
  final PlaceLocation initalLocation;
  final bool isSelecting;

  MapScreen(
      {this.initalLocation =
          const PlaceLocation(latitude: 26.467, longitude: 80.312),
      this.isSelecting = false});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LatLng? _pickedLocation;

  void _selectLocation(LatLng position) {
    setState(() {
      _pickedLocation = position;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigoAccent,
        actions: [
          if (widget.isSelecting)
            IconButton(
              onPressed: _pickedLocation == null ? null : () {
                Navigator.of(context).pop(_pickedLocation);
              },
              icon: const Icon(Icons.check),
            ),
        ],
        title: const Text(
          'Your Map',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: LatLng(
              widget.initalLocation.latitude,
              widget.initalLocation.longitude,
            ),
            zoom: 16),
        onTap: widget.isSelecting ? _selectLocation : null,
        markers: _pickedLocation != null
            ? {
                Marker(
                  markerId: const MarkerId('m1'),
                  position: _pickedLocation!,
                )
              }
            : {},
      ),
    );
  }
}
