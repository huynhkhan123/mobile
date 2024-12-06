import 'package:flutter/material.dart';
import 'package:mobile_app/models/destination_model.dart';
import 'package:mobile_app/widgets/destination_card.dart';

// DestinationWidget that displays a list of DestinationCards
class DestinationWidget extends StatelessWidget {
  final List<DestinationModel> destinations;

  const DestinationWidget({Key? key, required this.destinations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(destinations[0].image);
    return SafeArea(
      child: 
        Expanded(
          child: Image.asset("${destinations[0].image}"),
        )
      
    );
  }
}
