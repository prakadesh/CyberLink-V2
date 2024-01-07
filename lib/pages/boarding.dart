import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class boarding extends StatelessWidget {
  const boarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF23303B),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 218,
            height: 155,
            child: Image.asset('lib/assets/images/logo.png',fit: BoxFit.fill,),

          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome \n Cyber Link ',textAlign: TextAlign.center, style: GoogleFonts.lato(fontSize: 40,color: Colors.white),),
              ],
            ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            buttonPadding: EdgeInsets.symmetric(horizontal: 8.0), // Add space between buttons

            children: [
              TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: Size(333, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                      )
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/login'), child: Text('Login')),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        minimumSize: Size(333, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        )

                    ),
                    onPressed: () => Navigator.pushNamed(context, '/register'), child: Text('Register')),
              )
            ],
          )

        ],
      ),
    );
  }
}

