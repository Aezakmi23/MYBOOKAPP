import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeETTSem6 extends StatelessWidget {
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
                  text: "Digital Signal Processing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/F0EHlKZb#MSaFBvwcFUNDemr6U5zS7A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electronics Circuit Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/xxMx1arA#0_F21YJaOcsxWW250V1x8g'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Microcontroller And Embedded",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/U48WDQJZ#WG58g4chcN2t-1dCzD98Qw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "VLSI Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/dkFRWCwS#8dIxZNgNIe1Iey3LRMXqEA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Information Theory And Coding",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Q1dThKgZ#9KeLjQj6WbW2TbiJniPyyQ'),
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
