import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCivilSem6 extends StatelessWidget {
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
                  text: "Structural Engineering Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/hot2Ba6a#qn5zqfFTFpEindTyRMs_zQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Geotech Engineering-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/UhND2AhT#GduKtPawkAxEH-Yw_nyiCg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Environmental Engineering-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/c8t0ASjK#dECWHBYojPxvP4Hvd__EWw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Concrete Technology",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/oxlmHaRY#e3jW3gWXv3gEPAoigY5qiw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Construction Planning",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/NglAxSiR#t9LB4dqSoSWJj6OXn9VM-g'),
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
