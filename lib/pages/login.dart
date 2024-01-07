import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Text('Login to Your Account ',textAlign: TextAlign.center, style: GoogleFonts.lato(textStyle:TextStyle(color: Colors.white, fontSize: 30))),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35 ,right: 35),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'User Id',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,), // Adjust spacing between the TextFields
              Padding(
                padding: const EdgeInsets.only(left: 35 ,right: 35),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(10),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,), // Adjust spacing between the TextFields
              Padding(
                padding: const EdgeInsets.only(left: 35 ,right: 35),
                child: TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Color(0xFF456EFE),
                        minimumSize: Size(333, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                        )

                    ),
                    onPressed: () => Navigator.pushNamed(context, '/hometrans'), child: Text('Login',style: TextStyle(fontSize: 20),)),
              ),
              Center(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  buttonPadding: EdgeInsets.symmetric(horizontal: 8.0),
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/hometrans'),
                      child: Text(
                          'Forget User / Password ?',
                          style: GoogleFonts.lato(textStyle:TextStyle(color: Colors.grey,fontWeight: FontWeight.w300, fontSize: 18))
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/register'),
                      child: Text(
                          'Don’t have an account? Sign Up',
                          style: GoogleFonts.lato(textStyle:TextStyle(color: Colors.grey, fontSize: 18))
                      ),
                    )
                  ],
                )
              )
            ],
          ),


        ],
      ),
    );
  }
}
