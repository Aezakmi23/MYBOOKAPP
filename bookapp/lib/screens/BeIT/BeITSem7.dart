import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeITSem7 extends StatelessWidget {
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
                  text: "Data Mining & Warehousing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/FklCjYYI#-NKkgLd8l5c5MbCAhLASeQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Managment Information System & IT",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/dh1ElC4B#GRvJyno65KUtEjZId-ER1w'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Artificial intelligence & Network Security",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/s0kEBK6a#kkQbceY7GERrOh8kwOT_fw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Cryptography & Network Security",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/V8lk3SBR#NUUqoZvZYbGKaJJTVu1kEg'),
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
