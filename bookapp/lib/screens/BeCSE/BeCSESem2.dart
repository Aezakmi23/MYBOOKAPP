import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCSESem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-2"),
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
                  text: "Applied Mathematics-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/o993hKYC#u7myFSTBC8F-sZSe0Rb0kg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Enviroment And Ecology",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Y10AwIBR#YE8T6X3aMtTo4GxNcB1RiA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Basic Civil Engineering",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/QssE2SoT#XZwmBK2n8ZX5tqOxFkF-Dw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Fundamental Of Mechanical Engineering",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/RhlwEDjD#jFoKEtYx1LQjRLJuTTxVBg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Applied Physics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/851whIIZ#suG7ggloppQeiMbq5lbtOg'),
                ),
              )
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
