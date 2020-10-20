import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCivilSem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-4"),
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
                  text: "Structural Analysis-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Uw020SaY#81XDgcjAgxBOtXpoa8gEng'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Fluid Mechanics-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/th0ARKxR#IiSOTLJwz9Yq0JK_kAVImA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Surveying-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/th0ARKxR#IiSOTLJwz9Yq0JK_kAVImA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Civil Engineering Drawing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o8MBRKqB#6oDZZTu1Fn1iDae1CEw52Q'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Building Construction",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/B4kwgY4D#MDlntfQQXcAcxdoSjd1lew'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Transportation Engineering-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Js02jSCY#UMGEk3qnOteAGC2OQHC5RQ'),
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
