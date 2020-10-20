import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCSESem3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-3"),
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
                  text: "Appied Mathematics_III",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o993hKYC#u7myFSTBC8F-sZSe0Rb0kg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Basis Electronics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/4ktQGaaK#PSTD8Iqq5Lhyb-X8xT_hIQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computational Science",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Ux8UEICC#EwF49OBnH7dDyrpWwNfIJg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Prob Solving & Logic Building Using C",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/l41ihITT#cpo-4n-f1RNDlvJH_wwu2Q'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computer Concepts & Web Tech",
                  fontsize: 17,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Digital Electronics And Logic Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Qg1gXYoI#u4u0SewxEPlerDQ-rgZbVA'),
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
