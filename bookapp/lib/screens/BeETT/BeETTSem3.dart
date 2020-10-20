import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeETTSem3 extends StatelessWidget {
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
                  text: "Probablity And Random Variables",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/YhNAxZhL#oJ1jFcg4aciMtLS4Potxug'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electronics Devices And Circuits",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/kpNgxJBI#zl6gu_ktsS5SNgmo4PDZJg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Network Analysis And Synthesis",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/F0ES0RaI#UDn1O4zczAe1n252uc-xXA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Industrial Instrumentation",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/84Uw0JzY#u9e6CtggsFma1ahPrfiS5Q'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Digital Logic Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/18USTDpY#RRkrha0XNPH11LNAEPRUGQ'),
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
