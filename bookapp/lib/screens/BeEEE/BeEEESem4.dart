import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BeEEESem4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SEMESTER-4"),
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
                  text: "Network Analysis And Synthesis",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/4wFRUIhZ#qCPgh_OnMLVNtzEFz4s4oQ'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electromagnetic Theory",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/ZwUhXCCB#jUiTLbYd9eU7H3IiKwj2Tg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Measurement & Mea-ing Inst",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/QxdB2Kxb#nWg-19fEWblpBEK1ABU6bw'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Electrical Power Systems",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/w4N1Qaya#s9BJUX7CppEfIq6BXNFH6A'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Analog Electronics",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/MtVXQITK#fi7I9N5JgorNplZxKovMOg'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: RoundedButton(
                  text: "Digital Electronics And Logic Design",
                  fontsize: 17,
                  press: () => _launchURL(
                      'https://mega.nz/folder/kwNlQCDD#LF3kjAl187e2u_iLES0VBA'),
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
