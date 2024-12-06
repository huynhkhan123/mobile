import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mobile_app/animations/slide_up_route.dart';
import 'package:mobile_app/pages/home_page.dart';
import 'package:mobile_app/pages/login_page.dart';
import 'package:mobile_app/pages/signin_page.dart';
import 'package:mobile_app/utils/app_colors.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/places/place5.jpg'),  // Ensure the correct path
            fit: BoxFit.cover,  // Cover the entire area of the container
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(flex: 1), // More space at the top
                Text(
                  "Nhom chot",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: AppColors.secondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "- IF NOT NOW, WHEN? -",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: AppColors.secondaryColor,
                  ),
                  textAlign: TextAlign.center,
                ), // Dynamic spacing before the buttons
                Spacer(flex: 2),
                Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: AppColors.secondaryColor
                      ),
                      onPressed: () {
                        Navigator.of(context).push(SlideUpRoute(page: LoginPage()));
                      },
                      child: Text(
                        'LOG IN',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20
                        ),
                      )
                    ),
                    
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(200, 50),
                        backgroundColor: AppColors.secondaryColor
                      ),
                      onPressed: () {
                        Navigator.of(context).push(SlideUpRoute(page: SigninPage()));
                      },
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 20
                        ),
                      )
                    ),
                  ],
                ),
              ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(SlideUpRoute(page: HomePage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_up_outlined, color: AppColors.secondaryColor, size: 50)
                ),
                Spacer(flex: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  
}
