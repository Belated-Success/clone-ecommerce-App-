import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';






class SignIn extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(  
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png')
          ),
        ),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
              children: [
                Text('Sign in to continue'),
                Text(
                    'Vegi',
                    style: TextStyle(
                        fontsize: 50,
                        color: Colors.white,
                        shadows: [
                            BoxShadow(
                            blurRadius: 5,
                            color: Colors.green.shade900,
                            offset: Offset(3,3),
                            )
                        ]
                    ),
                ),
                column(
                    children: [
                    SignInButton(
                        Buttons.Apple,
                        text: "Sign in with Apple",
                        on Pressed: () {},
                        ),
                        SignInButton(
                            Buttons.Google,
                            text: "Sign in with Google",
                            onPressed: () async{
                                await _googleSignUp().then(
                                    (value) => Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => HomeScreen(),
                                        ),
                                    ),
                                );
                            },
                            ),
                            ],
                ),
                Column(
                    children: [
                      Text(
                        'By signing in you are agreeing to our',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                      Text(
                        'Terms and Pricacy Policy',
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
              ], 

              ),
            ),
          ],
        ),
      ),
    );
  }
}
