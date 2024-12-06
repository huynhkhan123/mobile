import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/models/destination_model.dart';
import 'package:mobile_app/utils/app_colors.dart';
import 'package:mobile_app/widgets/destination_widget.dart'; // Ensure this import is correct

class HomePage extends StatelessWidget {
   HomePage({super.key});

  // Example list of destinations
  final List<DestinationModel> destinations = [
    DestinationModel(id: '1', name: 'Korea', image: 'assets/places/place1.jpg'),
    DestinationModel(id: '2', name: 'Japan', image: 'assets/places/place2.jpg'),
    DestinationModel(id: '3', name: 'China', image: 'assets/places/place3.jpg'),
  ];

  

  @override
  Widget build(BuildContext context) {
    print(destinations.length);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/icons/menu.png', width: 30),
          onPressed: () {},
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Try "Hawaii"',
            contentPadding: EdgeInsets.symmetric(vertical: 10),
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.grey),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(14),
        children: [
          Text(
            "Destinations",
            style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          DestinationWidget(destinations: destinations), // Use the DestinationWidget here
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Feature tours",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.headingColor,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Host tours",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See all",
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.headingColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, size: 30),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30),
              label: ''),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.orange,
        unselectedItemColor: AppColors.headingColor,
      ),
    );
  }
}
