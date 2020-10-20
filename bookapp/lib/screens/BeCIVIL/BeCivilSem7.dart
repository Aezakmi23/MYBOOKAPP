import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeCivilSem7 extends StatelessWidget {
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
                  text: "Structural Engneering Design-III",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/g9kG1aDJ#NZDhbHo511PApqj_ozWxGQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Water Reources Engineering-I",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/wo1yFSSa#7H7ak9lP6trKNBsvlNCkFg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Environmetal Engineering-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/oksESS4Z#7BRHkuCZIuGsRow7chzpwg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Quantity Surveying And Cost Evaluation",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/48kyQS5C#Y8yj6ruyPeTPEzhfbsuHRw'),
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
