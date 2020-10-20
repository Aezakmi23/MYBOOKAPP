import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCSESem5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-5"),
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
                  text: "Microprocessor And Interfaces",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/hs8QyIDI#yNBY_8O7BruTHoBse7G9PA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Analysis And Design Of Algorithims",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Iw1y2KzR#L737jpA3vQyQzruf9JYC4Q'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Programming In Java",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/ZxkiWaQD#fZFqVMEeAAXthJvfw6jAAg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Unix And Shell Programming",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/whk03CLD#XGrVdEznCVkRpKhlRBaRKA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Theory Of Computation",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Jx8kyaBR#wP7STEsNdMakix8q99tx0Q'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Database Management Systerm",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/J9t0maQD#o28zq08qS11Xod3WHE8GRA'),
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
