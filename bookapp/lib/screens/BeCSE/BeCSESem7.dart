import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCSESem7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-7"),
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
                  text: "Mobile Computing And Application",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/wpsWVQIQ#id-PNPijdfRk99pewUSsJQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Paralled Processor And Computing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Uh8xGayC#_FBM-GFr0gebHcc0-vFp_g'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Networking Programming",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/NlkUjC7T#gL1J2nozwXp5RKWps6GG_w'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Cryptography And Networking Security",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Y41EUYLI#1wDkyncaRWlEdUdjd6teJA'),
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
