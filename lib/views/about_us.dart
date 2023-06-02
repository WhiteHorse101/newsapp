import 'package:flutter/material.dart';

class About_Us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 15, 0, 0),
                  child: Text(
                    'About Us',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 35, 5, 5),
              child: Text(
                'Our news application is a cutting-edge platform designed to provide users with the latest and most relevant news articles tailored to their interests. Built using the powerful Flutter framework, our application offers a seamless and user-friendly experience across multiple devices and operating systems.Backend Services Powered by Firebase To ensure efficient and reliable backend services, we have leveraged Firebase, a comprehensive development platform provided by Google. Firebase offers a wide range of features and services, including real-time database, cloud storage, authentication, and hosting.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
