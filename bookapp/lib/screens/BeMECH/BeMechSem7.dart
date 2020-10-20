import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeMechSem7 extends StatelessWidget {
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
                  text: "Automobile Engineering",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/M18AWZzJ#LLh_p5XlCCZyT8nI2GCvcQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Refrigeration And Air-Conditioning",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/dtsWibzC#kXtqGxWBY6DhkthLUyZ-5A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Computer Aided Design & Manuf-ing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/olswxBZJ#hhZeHUhH5xitz3Kcd5XwBQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Machine Tool Technology",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/J9tQDBpT#OmvtfYqoc-vQUXJESYn8pA'),
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
