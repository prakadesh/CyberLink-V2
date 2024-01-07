import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
class makecomplaint extends StatelessWidget {
  const makecomplaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF23303B),
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.network('https://lottie.host/b033b5dc-c21e-4ba3-853a-5a8ecf59d206/8P5op0LUiS.json',width: 304,height: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(' Would you like to report \n cyber incident or file a complaint? ',textAlign: TextAlign.center, style: GoogleFonts.lato(fontSize: 24,color: Colors.white),),
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.symmetric(horizontal: 8.0), // Add space between buttons
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFFEF3F45),
                      minimumSize: Size(333, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                      )
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/login'), child: Text('YES')),
              SizedBox(height: 24,),
              TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF456EFE),
                        minimumSize: Size(333, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        )

                    ),
                    onPressed: () => Navigator.pushNamed(context, '/home'), child: Text('NO')),

            ],
          )
        ],
      ),
    );
  }
}
