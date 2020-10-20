import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeITSem6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-6"),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Images/Beach shores_1450.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Your can help us grow by sharing Notes/books pdf On Email ",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Web Application Development",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/khlWmCpa#IgJ2FjdQfePbUjq7OHu-Bw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Information Theory & Coding",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/85lGSQJS#0f5E8JrMleyRdhRjLTlCTw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Software Engg & Project Management",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/UksCUaLJ#ONucipbnlULxI7H1nv8SKg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "UNIX & Shell Programming",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Yg8mRIaY#ntqDqVfYIvutCyGtQ4p5ng'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computer Graphics & Animation",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/9k0gjIaB#DW911-Ja-U1RrtGoTb4YmQ'),
                ),
              ),
            ]),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
