import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMINSem4 extends StatelessWidget {
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
                  text: "Mine Climate & Vent",
                  fontsize: 20,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Engg Materials",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/slcjjAJS#rQiay_rCobW_j2TZ46DJ-g'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Basic Electrical Engg",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/UhUTzYaB#nIqUrz-ds2hcYc09nu_MHg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mining Geology-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/h5d1EQpY#5QDeuYqNBQwfeZZMbMmJJQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Underground Coal Mining",
                  fontsize: 17,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Basic Electronics & Inst",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/MhER2C4I#0r1-fG8IYFCNnaUC7TeLnw'),
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
