import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeETTSem7 extends StatelessWidget {
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
                  text: "Microwaves Communication & Engg",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/lkcVgCCA#od-hkQWY6d_qSSQS-kEuEw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computer Networks",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/YlclnSQJ#5nsI2PQ42kSGBX_Kt3GrOw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Wireless Communications",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/F9MlDaRB#0mp-x06C4jLFmI_vntfXzw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Management Concepts And Techniques",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/IgFVWSgJ#geapjU95RO0T2vXzxFycyQ'),
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
