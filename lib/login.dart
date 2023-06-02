import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gennews/views/Home.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.blue),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "News",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              "Tak",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _googleSignIn.signIn().then((value) {
              String username = value.displayName;
              String profilepic = value.photoUrl;
              print(username);
            });
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}


// signInWithGoogle() async{

//   Future<void> signup(BuildContext context) async {
//     final GoogleSignIn googleSignIn = GoogleSignIn();
//     final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//     if (googleSignInAccount != null) {
//       final GoogleSignInAuthentication googleSignInAuthentication =
//           await googleSignInAccount.authentication;
//       final AuthCredential authCredential = GoogleAuthProvider.credential(
//           idToken: googleSignInAuthentication.idToken,
//           accessToken: googleSignInAuthentication.accessToken);
       
//       // Getting users credential
//       UserCredential result = await auth.signInWithCredential(authCredential); 
//       User user = result.user;
      
//       if (result != null) {
//         Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => Home()));
//       }  // if result not null we simply call the MaterialpageRoute,
//         // for go to the HomePage screen
//     }
//   }
// }