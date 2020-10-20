import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeITSem3 extends StatelessWidget {
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
                  text: "Applied Mathematics-III",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o993hKYC#u7myFSTBC8F-sZSe0Rb0kg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Discrete Structures",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/YksmAD4R#Gp2NHmka3r6usnXFI69_vw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Basic Electronics & Network Theory",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Ux0D0Iqb#-5aAfZWdYg_wlcKMCfGS9g'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Concepts of IT & Web Technology",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/kh1WFKYS#bE89k2DNp4UneIHC_u3Yjw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Prob Solving & Logic Building Using C",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Yh93yKjT#SZp80wc1tEx0RPLvUy4KrQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Digital Electronics And Logic Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Ux0D0Iqb#-5aAfZWdYg_wlcKMCfGS9g'),
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
