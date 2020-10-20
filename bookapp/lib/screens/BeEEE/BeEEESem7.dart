import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeEEESem7 extends StatelessWidget {
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
                  text: "Switchgear And Protection",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/5pEzjKoA#V2bZyaDnPqCm_juHUSZ9zg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Soft Computing And Its Appications",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/g4E1Va6Z#UMkmWcT-ORd4p5T7VHefvA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Drives",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/44tGUCaK#2zHpRSez4TIGjN7_fFHZmA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Microcontrollers And Applications",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/lxNxEKwQ#BFUghjISzT57kc4__EasXQ'),
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
