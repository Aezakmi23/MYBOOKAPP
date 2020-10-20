import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCSESem6 extends StatelessWidget {
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
                  text: "Computer Networks",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/I90mXQhJ#p5EraknucD-JYyHu4dLMCg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Compiler Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/4s8kQSjC#eEM85wvSc4cD5C6gscKNPA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Enterprise Resources Planning",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Yl92UKBC#zdZ1cKxY_SX1LOoQZys4fQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Software Engg & Project Managment",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/E1kSDaqZ#d4QA6CPN8VRiuktcPlSRFw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computer Graphics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/5k0ySAoJ#7II1vCfL42zBrmpiWxJhpw'),
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
