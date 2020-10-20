import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeEEESem5 extends StatelessWidget {
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
                  text: "Microprocessor And Peripherials",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/pgdRxCxb#6U0BMQajCZql8dp_l9Hf4g'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Integrated Circuits And Applications",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/BgczFYyY#gYjv6GAwgnaJKDGeZhwxlQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Linear Control System",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/txVzxQqY#2rm9VcZvpaBytgKFVsDYfg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Signals And Systems",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/hkMj2SKZ#q8WdHItrvOrzAAFEZ-2Zgg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Machines-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/Btch1QiK#ubQGlqWMhMp_fsC8XGuGfQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Communication System",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/VsNVUYyJ#tqsLjx4PeL6lKjzChYWO-Q'),
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
