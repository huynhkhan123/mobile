import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/animations/slide_down_route.dart';
import 'package:mobile_app/pages/authentication_page.dart';
import 'package:mobile_app/utils/app_colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Spacer(flex: 4),
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
                ),
                Spacer(flex: 4),  // Space between the slogan and the fields
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondaryColor, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondaryColor, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondaryColor, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                 padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    obscureText: true,  // To obscure password input
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.white,
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondaryColor, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondaryColor, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.secondaryColor, width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 70, right: 70),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,  // Button background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),  // Button shape
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),  // Button padding
                    ),
                    onPressed: () {},
                    child: Text(
                      "LOG IN",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Divider(
                    color: AppColors.secondaryColor,
                    height: 5, // Khoảng cách chiều dọc tính cả dày của đường Divider
                    thickness: 1, // Độ dày của đường Divider
                    indent: 20, // Khoảng trễ ở đầu đường Divider
                    endIndent: 20, // Khoảng trễ ở cuối đường Divider
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot your password?",
                    style: GoogleFonts.poppins(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                
                Spacer(flex: 4),
                IconButton(
                  onPressed: () {
                   Navigator.of(context).push(SlideDownRoute(page: AuthenticationPage()));
                  },
                  icon: Icon(Icons.keyboard_arrow_down_outlined, size: 50, color: AppColors.secondaryColor),
                ),
                Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
