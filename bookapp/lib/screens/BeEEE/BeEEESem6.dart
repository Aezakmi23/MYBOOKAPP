import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeEEESem6 extends StatelessWidget {
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
                  text: "Electrical Power System-II",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/s9ExESDI#h81q9GXgKEN4iRyB5cd2QA'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Modern Instrumentation Techniques",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/dsFXXKaB#pRBTX3AJxYZbVSlhHVGUSw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Advanced Microprocessor & Peripherals",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/B5MThQjQ#RHV2gQBlmeENq91x2lBEXg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Power Electronics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/g4U1BYCS#3N1HOhtfWhD--tzdK09N5w'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Digital Signal Processing",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/s9ExESDI#h81q9GXgKEN4iRyB5cd2QA'),
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
