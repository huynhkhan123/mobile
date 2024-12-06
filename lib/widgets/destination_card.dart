import 'package:flutter/material.dart';
import 'package:mobile_app/models/destination_model.dart';

class DestinationCard extends StatelessWidget                                    {
  final DestinationModel destination;

  const DestinationCard({Key? key, required this.destination}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(destination.name);
    return Row(
      children: [
        Text("${destination.name}")
      ],
    );
  }
}