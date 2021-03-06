import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMINSem6 extends StatelessWidget {
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
                  text: "Blasting Mining",
                  fontsize: 17,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mine Health And Safety",
                  fontsize: 17,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mine Machinery-II",
                  fontsize: 17,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mine Ligislation-II",
                  fontsize: 17,
                  press: () => _launchURL(''),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Mineral Dressing",
                  fontsize: 17,
                  press: () => _launchURL(''),
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
