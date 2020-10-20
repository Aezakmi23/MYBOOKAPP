import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeEESem5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-5"),
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
                  text: "Electrical Machine-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Btch1QiK#ubQGlqWMhMp_fsC8XGuGfQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Microprocessor & Interfacing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/0wlnXQrS#nceLv9TDsbeCOJJjuXlrbQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Applied Numerical Analysis",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Vss1CYoT#LMpRi5lG3yxExPR_VCwQqw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Integrated Circuits",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/EksTAYxI#gHkx8PdQ488w7v07MvB4Sg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Control System Engg ",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/UolxxYrB#CTsSMjNZKUC-tv26mtnxbg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Communication Theory",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/cttxnS5A#4EOJL6O-9HuO6lNpdRwuUQ'),
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
